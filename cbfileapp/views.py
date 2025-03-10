# Django core imports
from django.db import connection  # For raw SQL queries
from django.shortcuts import render, redirect, get_object_or_404  # Rendering templates and handling redirects
from django.contrib.auth import login  # Handling user authentication
from django.contrib import messages  # Flash messages for notifications
from django.contrib.auth.hashers import check_password  # Password hashing and verification
from django.core.files.storage import FileSystemStorage  # Handling file uploads
from django.conf import settings  # Accessing Django settings
from django.http import JsonResponse, FileResponse, HttpRequest  # JSON responses, file downloads, and HTTP requests
from django.urls import reverse  # URL handling
from django.core.mail import send_mail  # Sending emails
from django.utils.timezone import now  # Handling timezone-aware datetime
from django.utils.crypto import get_random_string  # Generating secure random strings

import os
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from django.http import JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from .models import FolderFile, StudentAccount, FilesShared
# Django ORM imports
from django.db.models import Prefetch, Q, OuterRef, Subquery, Exists  # Query optimization and filtering

# Models
from .models import (
    AdminLogs, StudentLogs, FilesShared, SharedFilesView, 
    FacultyAccount, StudentFolderView, FacultyAdminLogs, 
    StudentActivityLogs, StudentAccount, UserAccount, 
    FolderTns, FacultyFoldersView, StudentFolder, FolderFile
)

# Forms
from .forms import MyForm  # Importing custom form

# Cryptography imports
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.backends import default_backend

# Python standard library imports
import os  # OS-level operations
import base64  # Encoding and decoding
import random  # Random number generation
import datetime  # Date and time handling


def log_action(user_type: str, user_id: str, action: str, request: HttpRequest):
    """
    A generic logging function to log actions for admin and student.
    
    :param user_type: 'admin' or 'student' to specify the user type
    :param user_id: The user ID (admin ID or student username)
    :param action: Description of the action performed
    :param request: The HttpRequest object to capture IP and user agent
    """
    ip_address = request.META.get('REMOTE_ADDR', '')
    user_agent = request.META.get('HTTP_USER_AGENT', '')

    if user_type == 'admin':
        # Log the action for admin
        AdminLogs.objects.create(
            admin_id=user_id,
            action=action,
            ip_address=ip_address,
            user_agent=user_agent
        )
    elif user_type == 'student':
        # Log the action for student
        StudentLogs.objects.create(
            student_id=user_id,
            action=action,
            ip_address=ip_address,
            user_agent=user_agent
        )


def generate_otp():
    """Generate a 6-digit OTP"""
    return str(random.randint(100000, 999999))

def send_email(otp, send_to):
    """Send OTP email"""
    subject = "Your One-Time Password (OTP)"
    message = f"Your OTP is {otp}. It is valid for 5 minutes."
    from_email = "dece.nas.system@gmail.com"
    recipient_list = [send_to]
    
    send_mail(subject, message, from_email, recipient_list)


def send_otp_pass(request):
    """Send OTP to the user's email for password reset"""
    if request.method == "POST":
        email = request.POST.get("email")
        try:
            # Check if the email exists in the database
            user = UserAccount.objects.get(username=email)
            # Generate OTP and store in session
            otp = generate_otp()
            request.session["otp"] = otp
            request.session["otp_expiry"] = (datetime.datetime.now() + datetime.timedelta(minutes=5)).isoformat()
            request.session["user_id"] = user.u_id  # Store the user_id in the session

            # Send the OTP to the user's email
            send_email(otp, email)
            messages.success(request, "An OTP has been sent to your email.")
            return redirect("enter_otp")

        except UserAccount.DoesNotExist:
            messages.error(request, "No account found with this email address.")
            return redirect("send_otp")  # Redirect back to the OTP request page

    return render(request, "forgot_password.html")  # Render the OTP request page 

def enter_otp(request):
    otp = request.session.get('otp', None)
    if not otp:
        return redirect(reverse('home'))  

    """Allow the user to enter OTP for verification"""
    if request.method == "POST":
        entered_otp = request.POST.get("otp")
        session_otp = request.session.get("otp")
        otp_expiry = request.session.get("otp_expiry")
        user_id = request.session.get("user_id")

        if not session_otp or datetime.datetime.now() > datetime.datetime.fromisoformat(otp_expiry):
            messages.error(request, "OTP has expired or is invalid.")
            return redirect("send_otp")  # Redirect to the OTP send page

        if str(entered_otp) == str(session_otp):
            return redirect("change_password")
        else:
            messages.error(request, "Invalid OTP.")
            return redirect("enter_otp")  # Redirect back to the OTP verification page

    return render(request, "enter_otp.html")  # Render OTP input page


def change_password(request):
    
    otp = request.session.get('otp', None)
    if not otp:
        return redirect(reverse('home'))  
    """Allow the user to change their password after OTP verification"""
    if request.method == "POST":
        password = request.POST.get("password")
        confirm_password = request.POST.get("confirm_password")
        user_id = request.session.get("user_id")

        if password != confirm_password:
            messages.error(request, "Passwords do not match.")
            return redirect("change_password")  # Redirect back to the password change page

        # Update the password in the database
        user = UserAccount.objects.get(u_id=user_id)
        user.hashed_password = encrypt(password, passwordUnique)  # You should hash the password before saving
        user.save()
        messages.success(request, "Password updated successfully!")
        del request.session["otp"]
        return redirect("home")  # Redirect to login page or wherever appropriate

    return render(request, "change_password.html")  # Render password change form


def require_faculty_login(view_func):
    """
    Decorator to ensure that the faculty_id is available in the session.
    If faculty_id is not in the session, the user will be redirected to the admin login page.
    """
    def wrapper(request, *args, **kwargs):
        faculty_id = request.session.get('faculty_id', None)
        if not faculty_id:
            return redirect(reverse('admin_login'))  # Replace 'admin_login' with the actual login URL name
        return view_func(request, *args, **kwargs)
    
    return wrapper

# Generate a key from a password
def derive_key(password: str, salt: bytes) -> bytes:
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,  # AES-256 requires a 32-byte key
        salt=salt,
        iterations=100000,
        backend=default_backend()
    )
    return kdf.derive(password.encode())

# Encrypt function
def encrypt(plaintext: str, password: str) -> str:
    salt = os.urandom(16)  # Generate a new salt for each encryption
    key = derive_key(password, salt)
    iv = os.urandom(16)  # AES requires a 16-byte IV
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=default_backend())
    encryptor = cipher.encryptor()
    
    # PKCS7 Padding
    padding_length = 16 - (len(plaintext) % 16)
    padded_plaintext = plaintext + (chr(padding_length) * padding_length)

    ciphertext = encryptor.update(padded_plaintext.encode()) + encryptor.finalize()
    
    # Store salt, iv, and ciphertext together
    return base64.b64encode(salt + iv + ciphertext).decode()

# Decrypt function
def decrypt(encrypted_text: str, password: str) -> str:
    encrypted_data = base64.b64decode(encrypted_text)
    
    salt = encrypted_data[:16]  # Extract the salt
    iv = encrypted_data[16:32]  # Extract the IV
    ciphertext = encrypted_data[32:]  # Extract the actual ciphertext
    
    key = derive_key(password, salt)
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=default_backend())
    decryptor = cipher.decryptor()
    
    decrypted_padded = decryptor.update(ciphertext) + decryptor.finalize()
    
    # Remove PKCS7 padding
    padding_length = ord(decrypted_padded[-1:])
    return decrypted_padded[:-padding_length].decode()

# Example Usage
passwordUnique = "hashedpassword143"
# text_to_encrypt = "hashedpassword1"

# encrypted = encrypt(text_to_encrypt, password)
# print("Encrypted:", encrypted)

# decrypted = decrypt(encrypted, password)
# print("Decrypted:", decrypted)


# login_admin function
def login_admin(request):
    form = MyForm(request.POST or None)

    # Get login attempts from session
    attempts = request.session.get('admin_login_attempts', 0)
    lockout_time = request.session.get('admin_lockout_time')

    # Check if user is locked out
    if lockout_time and now() < datetime.fromisoformat(lockout_time):
        return render(request, 'admin_p/a-login.html', {'form': form, 'locked_out': True})

    if lockout_time and now() > datetime.fromisoformat(lockout_time):
        request.session.flush()

    if request.method == 'POST':
        if form.is_valid():
            username_or_email = request.POST.get('email-username')
            password = request.POST.get('password')

            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT u_id, username, hashed_password FROM user_account 
                    WHERE username = %s AND u_id = 111111
                """, [username_or_email])
                faculty = cursor.fetchone()

            if faculty:
                u_id, username, hashed_password = faculty

                if decrypt(hashed_password, passwordUnique) == password:
                    request.session['admin_id'] = u_id  
                    request.session['username'] = username  
                    request.session.pop('admin_login_attempts', None)  # Reset attempts on success
                    request.session.pop('admin_lockout_time', None)  # Remove lockout if present
                    log_action('admin', u_id, 'Logged In', request)

                    messages.success(request, "Login Successfully!")
                    return redirect('a_dashboard')  
                else:
                    messages.error(request, "Invalid password!")
            else:
                messages.error(request, "User not found!")

            # Increment login attempts
            attempts += 1
            request.session['admin_login_attempts'] = attempts

            # Lock the account after 3 failed attempts
            if attempts >= 3:
                lockout_time = now() + timedelta(minutes=5)
                request.session['admin_lockout_time'] = lockout_time.isoformat()
                messages.error(request, "Too many failed attempts. Try again in 5 minutes.")

        else:
            messages.error(request, "Invalid CAPTCHA! Please try again.")

    context = {'form': form, 'locked_out': request.session.get('admin_lockout_time') is not None}
    return render(request, 'admin_p/a-login.html', context)



def login_faculty(request):
    form = MyForm(request.POST or None)

    # Get login attempts from session
    attempts = request.session.get('faculty_login_attempts', 0)
    lockout_time = request.session.get('faculty_lockout_time')

    # Check if user is locked out
    if lockout_time and now() < datetime.fromisoformat(lockout_time):
        return render(request, 'faculty/a-login.html', {'form': form, 'locked_out': True})

    if lockout_time and now() > datetime.fromisoformat(lockout_time):
        request.session.flush()
    if request.method == 'POST':
        if form.is_valid():
            username_or_email = request.POST.get('email-username')
            password = request.POST.get('password')

            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT u_id, username, hashed_password, first_name, last_name, middle_name, faculty_id  
                    FROM faculty_accounts 
                    WHERE username = %s OR gsuite = %s
                """, [username_or_email, username_or_email])
                faculty = cursor.fetchone()

            if faculty:
                u_id, username, hashed_password, first_name, middle_name, last_name, faculty_id = faculty

                if decrypt(hashed_password, passwordUnique) == password:
                    request.session['faculty_id'] = u_id  
                    request.session['a_fullname'] = f"{first_name} {middle_name} {last_name}"  
                    request.session.pop('faculty_login_attempts', None)  # Reset attempts on success
                    request.session.pop('faculty_lockout_time', None)  # Remove lockout if present
                    log_action('admin', u_id, 'Logged In', request)

                    messages.success(request, "Login successful!")
                    return redirect('f_dashboard')  
                else:
                    messages.error(request, "Invalid password!")
            else:
                messages.error(request, "User not found!")

            # Increment login attempts
            attempts += 1
            request.session['faculty_login_attempts'] = attempts

            # Lock the account after 3 failed attempts
            if attempts >= 3:
                lockout_time = now() + timedelta(minutes=5)
                request.session['faculty_lockout_time'] = lockout_time.isoformat()
                messages.error(request, "Too many failed attempts. Try again in 5 minutes.")
                log_action('admin', u_id, 'Logged In too many failed attempts, locked for 5 minutes', request)

        else:
            messages.error(request, "Invalid CAPTCHA! Please try again.")

    context = {'form': form, 'locked_out': request.session.get('faculty_lockout_time') is not None}
    return render(request, 'faculty/a-login.html', context)

def home(request):

    return render(request, 'landing.html')

def read_html(request):
   
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('admin_login'))  # 'faculty_login' should be the name of your login URL


    # Pass the session data to the template
    context = {
        'admin_id': admin_id,
        'full_name': full_name
      
    }

    return render(request, 'admin_p/index.html', context)

def read_html_f(request):
   
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)

    # Pass the session data to the template
    context = {
        'faculty_id': faculty_id,
        'full_name': full_name
      
    }

    return render(request, 'faculty/index.html', context)

def read_html_s(request):
    student_id = request.session.get('student_id', None)
    full_name = request.session.get('s_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not student_id:
        return redirect(reverse('student_login'))  # 'admin_login' should be the name of your login URL

    # Pass the session data to the template
    context = {
        'faculty_id': student_id,
        'full_name': full_name,
    }

    return render(request, 'student/index.html', context)




def fetch_data(query):
    with connection.cursor() as cursor:
        cursor.execute(query)
        result = cursor.fetchall()
    return result


def admin_logs(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)


    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL

    data = FacultyAdminLogs.objects.all()
    return render(request, 'admin_p/admin-logs.html', {'admin_id': admin_id, 'full_name': full_name,'data': data})

def student_logs(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL


    data = StudentActivityLogs.objects.all()

    return render(request, 'admin_p/student-logs.html', {'admin_id': admin_id, 'full_name': full_name,'data': data})

def admin_accounts(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL


    data = FacultyAccount.objects.all()
    return render(request, 'admin_p/admin-accounts.html', {'admin_id': admin_id,'full_name': full_name,'data': data})

def student_accounts(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL

    data = StudentAccount.objects.all()
    return render(request, 'admin_p/student-accounts.html', {'admin_id': admin_id, 'full_name': full_name,'data': data})

def logout_admin(request):
    request.session.flush()
    return redirect('admin_login')

def logout_faculty(request):
    log_action('admin', request.session.get('faculty_id', None), 'Logged out', request)
    request.session.flush()
    return redirect('faculty_login')

def logout_student(request):
    log_action('student', request.session.get('student_id', None), 'Logged out', request)
    request.session.flush()
    return redirect('student_login')

def reg_admin(request):
    return render(request, 'admin_p/a-register.html')


def login_student(request):
    form = MyForm(request.POST or None)

    # Get login attempts from session
    attempts = request.session.get('login_attempts', 0)
    lockout_time = request.session.get('lockout_time')

    # Check if user is locked out
    if lockout_time and now() < datetime.fromisoformat(lockout_time):
        return render(request, 'student/s-login.html', {'form': form, 'locked_out': True})

    if lockout_time and now() > datetime.fromisoformat(lockout_time):
        request.session.flush()

    if request.method == 'POST':
        if form.is_valid():
            username_or_email = request.POST.get('email-username')
            password = request.POST.get('password')

            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT u_id, username, hashed_password, first_name, last_name, middle_name, student_id  
                    FROM student_accounts 
                    WHERE username = %s 
                """, [username_or_email])
                faculty = cursor.fetchone()

            if faculty:
                u_id, username, hashed_password, first_name, middle_name, last_name, student_id = faculty

                if decrypt(hashed_password, passwordUnique) == password:
                    request.session['student_id'] = student_id  
                    request.session['s_fullname'] = f"{first_name} {middle_name} {last_name}"
                    request.session.pop('login_attempts', None)  # Reset attempts on success
                    request.session.pop('lockout_time', None)  # Remove lockout if present
                    log_action('student', student_id, 'Logged in', request)

                    messages.success(request, "Login successful!")
                    return redirect('s_dashboard')
                else:
                    messages.error(request, "Invalid password!")
            else:
                messages.error(request, "User not found!")

            # Increment login attempts
            attempts += 1
            request.session['login_attempts'] = attempts

            # Lock the account after 3 attempts
            if attempts >= 3:
                lockout_time = now() + timedelta(minutes=5)
                request.session['lockout_time'] = lockout_time.isoformat()
                messages.error(request, "Too many failed attempts. Try again in 5 minutes.")
                log_action('student', student_id, 'Logged In too many failed attempts, locked for 5 minutes', request)

        else:
            messages.error(request, "Invalid CAPTCHA! Please try again.")

    context = {'form': form, 'locked_out': request.session.get('lockout_time') is not None}
    return render(request, 'student/s-login.html', context)


def reg_student(request):
    form = MyForm(request.POST or None)

    if request.method == 'POST':
        # Validate CAPTCHA first
        if form.is_valid():
            first_name = request.POST.get("first_name")
            middle_name = request.POST.get("middle_name")
            last_name = request.POST.get("last_name")
            sr_code = request.POST.get("sr_code")
            username = request.POST.get("username")
            password = request.POST.get("password")
            
            hashed_password = encrypt(password, passwordUnique) # Hash the password before storing

            try:
                with connection.cursor() as cursor:
                    # Insert into student_info table
                    cursor.execute(
                        "INSERT INTO student_info (sr_code, g_email, first_name, middle_name, last_name) VALUES (%s, %s, %s, %s, %s)",
                        (sr_code, f"{sr_code}@g.batstate-u.edu.ph", first_name, middle_name, last_name),
                    )

                    # Insert into user_account table
                    cursor.execute(
                        "INSERT INTO user_account (username, hashed_password, student_id, email_verified) VALUES (%s, %s, %s, %s)",
                        (f"{sr_code}@g.batstate-u.edu.ph", hashed_password, sr_code, 'no'),
                    )
                    
                request.session['student_email'] = f"{sr_code}@g.batstate-u.edu.ph"  
                request.session['student_srcode'] = sr_code
                log_action('student', sr_code, 'Registered to the system', request)

                messages.success(request, "Registration successful! Please verify your email.")
                return redirect("student_everif")  # Redirect to login page after successful registration

            except Exception as e:
                messages.error(request, f"Error: {e}")
                
    context = {'form': form}

    return render(request, "student/s-register.html", context)



def admin_folders(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL

    # Retrieve all student folders without filtering by faculty_id
    student_folders = StudentFolderView.objects.all()

    # Group by unique_code for the folder
    grouped_folders = {}
    for folder in student_folders:
        unique_code = folder.unique_code
        if unique_code not in grouped_folders:
            grouped_folders[unique_code] = {
                'folder_name': folder.folder_name,
                'description': folder.description,
                'apicode': folder.apicode,
                'faculty_gsuite': folder.faculty_gsuite,
                'students': []
            }
        # Append student details to the students list
        student_name = f"{folder.student_first_name} {folder.student_last_name}"
        grouped_folders[unique_code]['students'].append(student_name)

    # Pass the session data and grouped folders to the template
    context = {
        'admin_id': admin_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders
    }

    return render(request, 'admin_p/folders.html', context)


def faculty_folders(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    log_action('admin', faculty_id, 'Viewed folders he/she created', request)

    if not faculty_id:
        return redirect(reverse('faculty_login'))  

    # Handle Folder Creation
    if request.method == "POST":
        folder_name = request.POST.get('folder_name', '').strip()
        description = request.POST.get('description', '').strip()
        apicode = request.POST.get('apicode', '').strip()

        if folder_name and description and apicode:
            unique_code = get_random_string(10)  # Generate a unique code

            FolderTns.objects.create(
                folder_name=folder_name,
                description=description,
                unique_code=unique_code,
                apicode=apicode,
                faculty_id=faculty_id
            )

            messages.success(request, "Folder created successfully!")
            return redirect('faculty_folders')  # Redirect to refresh the page

        else:
            messages.error(request, "All fields are required!")

    # Fetch folders linked to students
    student_folders = StudentFolderView.objects.filter(faculty_id=faculty_id).values(
        'unique_code', 'folder_name', 'description', 'apicode', 'faculty_gsuite', 
        'student_first_name', 'student_last_name'
    )

    # Group student-associated folders
    grouped_folders = {}
    for folder in student_folders:
        unique_code = folder['unique_code']
        if unique_code not in grouped_folders:
            grouped_folders[unique_code] = {
                'folder_name': folder['folder_name'],
                'description': folder['description'],
                'apicode': folder['apicode'],
                'faculty_gsuite': folder['faculty_gsuite'],
                'students': []
            }
        student_name = f"{folder['student_first_name']} {folder['student_last_name']}"
        grouped_folders[unique_code]['students'].append(student_name)

    # Fetch folders with no associated students
    student_folders_subquery = StudentFolderView.objects.filter(
        faculty_id=faculty_id, unique_code=OuterRef('unique_code')
    ).values('unique_code')

    empty_folders = FacultyFoldersView.objects.filter(
        faculty_id=faculty_id
    ).exclude(
        unique_code__in=Subquery(student_folders_subquery)
    ).values('unique_code', 'folder_name', 'description', 'apicode', 'faculty_email')


    context = {
        'faculty_id': faculty_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders,
        'empty_folders': empty_folders,  # Pass folders without students
    }

    return render(request, 'faculty/folders.html', context)



def student_folders(request):
    student_id = request.session.get('student_id', None)
    full_name = request.session.get('s_fullname', None)
    log_action('student', student_id, 'Viewed folders he/she is joined in', request)

    # If there is no student_id in the session, redirect to the student login page
    if not student_id:
        return redirect(reverse('student_login'))

    # Get folders that the student has joined (for viewing)
    student_folders = StudentFolder.objects.filter(student_id=student_id) \
        .values('id', 'folder__unique_code', 'folder__folder_name', 'folder__description', 'folder__apicode')

    # Group folders by unique_code
    grouped_folders = {}
    for folder in student_folders:
        unique_code = folder['folder__unique_code']
        if unique_code not in grouped_folders:
            grouped_folders[unique_code] = {
                'folder_name': folder['folder__folder_name'],
                'description': folder['folder__description'],
                'apicode': folder['folder__apicode']
            }

    context = {
        'student_id': student_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders
    }

    return render(request, 'student/folders.html', context)

def join_folder(request):
    student_id = request.session.get('student_id', None)
    
    if request.method == 'POST' and student_id:
        unique_code = request.POST.get('unique_code')
        # Find folder by unique_code
        try:
            folder = FolderTns.objects.get(unique_code=unique_code)
            
            # Check if the student has already joined this folder
            if StudentFolder.objects.filter(student_id=student_id, folder=folder).exists():
                return redirect('student_folder')  # or show a message: "Already joined this folder"
            
            # Add student to the folder
            StudentFolder.objects.create(student_id=student_id, folder=folder)
            return redirect('student_folder')
        except FolderTns.DoesNotExist:
            # Handle case where the folder is not found
            return redirect('student_folder')  # or show a message: "Folder not found"
    return redirect('student_folder')


def student_everif(request):
    """Handle OTP verification"""
    student_email = request.session.get("student_email", None)
    student_srcode = request.session.get("student_srcode", None)

    if not student_email:
        return redirect("student_reg")  # Redirect if no email in session

    # Generate OTP and store in session
    otp = generate_otp()
    request.session["otp"] = otp
    request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()

    send_email(otp, student_email)
    messages.success(request, "An OTP has been sent to your email.")

    return render(request, "student/s-everif.html", {"student_email": student_email, "student_srcode": student_srcode})




def verify_otp(request):
    """Verify user input OTP"""
    if request.method == "POST":
        entered_otp = request.POST.get("otp")
        session_otp = request.session.get("otp")
        expiry = request.session.get("otp_expiry")

        if not session_otp or not expiry:
            messages.error(request, "OTP expired. Please request a new one.")
            return redirect("student_everif")

        if now() > datetime.datetime.fromisoformat(expiry):
            messages.error(request, "OTP has expired. Request a new one.")
            return redirect("student_everif")

        if entered_otp == session_otp:
            # Mark email as verified in DB
            user = UserAccount.objects.filter(student_id=request.session["student_srcode"]).first()
            if user:
                user.email_verified = "yes"
                user.save()
            
            messages.success(request, "Email verified successfully!")
            return redirect("student_login")

        else:
            messages.error(request, "Invalid OTP. Try again.")
            return redirect("student_everif")



def map_network_drive():
    """
    Function to map the network drive without authentication.
    """
    network_drive = settings.NETWORK_DRIVE
    try:
        # Run the 'net use' command without user authentication
        run([
            "net", "use", network_drive["drive_letter"], network_drive["network_path"],
            "/persistent:yes"
        ], check=True)
    except CalledProcessError as e:
        print(f"Error mapping network drive: {e}")
        raise Exception("Failed to map network drive.")



# Define the Network Drive Path
NETWORK_DRIVE_PATH = r"Z:\\"  # Update this if needed

# Allowed file types
IMAGE_EXTENSIONS = (".jpg", ".jpeg", ".png", ".gif", ".bmp", ".webp")
VIDEO_EXTENSIONS = (".mp4", ".avi", ".mov", ".mkv", ".flv")
PDF_EXTENSION = ".pdf"

def list_network_files(request):
    """ List all PDFs, images, and videos in the network drive. """
    files = {
        "pdfs": [],
        "images": [],
        "videos": []
    }

    if os.path.exists(NETWORK_DRIVE_PATH):
        all_files = os.listdir(NETWORK_DRIVE_PATH)

        for file in all_files:
            if file.endswith(PDF_EXTENSION):
                files["pdfs"].append(file)
            elif file.endswith(IMAGE_EXTENSIONS):
                files["images"].append(file)
            elif file.endswith(VIDEO_EXTENSIONS):
                files["videos"].append(file)

    return render(request, "list_files.html", {"files": files})

def serve_file(request, filename):
    """ Serve PDF, image, or video from the network drive. """
    file_path = os.path.join(NETWORK_DRIVE_PATH, filename)

    if not os.path.exists(file_path):
        raise Http404("File not found")

    # Determine content type
    if filename.endswith(PDF_EXTENSION):
        content_type = "application/pdf"
    elif filename.endswith(IMAGE_EXTENSIONS):
        content_type = "image/jpeg"  # Generic image type
    elif filename.endswith(VIDEO_EXTENSIONS):
        content_type = "video/mp4"  # Generic video type
    else:
        raise Http404("Unsupported file type")

    response = FileResponse(open(file_path, "rb"), content_type=content_type)
    response["Content-Disposition"] = f'inline; filename="{filename}"'  # Inline viewing
    return response


def serve_folder_file(request, filename, folder_code):
    """ Serve PDF, image, or video from the network drive. """
    file_path = os.path.join(NETWORK_DRIVE_PATH, folder_code , filename)

    if not os.path.exists(file_path):
        raise Http404("File not found")

    # Determine content type
    if filename.endswith(PDF_EXTENSION):
        content_type = "application/pdf"
    elif filename.endswith(IMAGE_EXTENSIONS):
        content_type = "image/jpeg"  # Generic image type
    elif filename.endswith(VIDEO_EXTENSIONS):
        content_type = "video/mp4"  # Generic video type
    else:
        raise Http404("Unsupported file type")

    response = FileResponse(open(file_path, "rb"), content_type=content_type)
    response["Content-Disposition"] = f'inline; filename="{filename}"'  # Inline viewing
    return response

def view_folder_s(request, folder_code):
    """ Faculty view of folder with file listing. """
    student_id = request.session.get("student_id")
    full_name = request.session.get("a_fullname")

    if not student_id:
        return redirect(reverse("student_login"))

    folder_files = FolderFile.objects.filter(folder_code=folder_code)
    students = StudentAccount.objects.all()
    shared_files = FilesShared.objects.filter(folder_code=folder_code)

    files = {
        "pdfs": [],
        "images": [],
        "videos": []
    }

    folder_path = os.path.join(NETWORK_DRIVE_PATH, folder_code)
    print(folder_path)

    if os.path.exists(folder_path):
        all_files = os.listdir(folder_path)

        for file in all_files:
            file_record = folder_files.filter(file_name=file).first()  # Get file info if exists in DB
            file_info = {
                "file_name": file,
                "file_description": file_record.file_description if file_record else "No description",
                "file_link": file,
            }

            if file.lower().endswith(PDF_EXTENSION):
                files["pdfs"].append(file_info)
            elif file.lower().endswith(IMAGE_EXTENSIONS):
                files["images"].append(file_info)
            elif file.lower().endswith(VIDEO_EXTENSIONS):
                files["videos"].append(file_info)


    if request.method == "POST":
        try:
            # Debugging: Print request data
            print("POST Data:", request.POST)
            print("FILES Data:", request.FILES)

            if "upload_file" not in request.POST:
                return JsonResponse({"error": "Missing 'upload_file' field"}, status=400)

            if "file_link" not in request.FILES:
                return JsonResponse({"error": "No file uploaded"}, status=400)

            file = request.FILES["file_link"]
            file_description = request.POST.get("file_description", "")
            folder_code = request.POST.get("folder_code", folder_code)  # Ensure folder_code is provided

            # Define the folder path in the network drive
            folder_path = os.path.join(settings.MEDIA_ROOT, folder_code)
            os.makedirs(folder_path, exist_ok=True)  # Create the folder if it doesn't exist

            # Save file in the specified folder
            fs = FileSystemStorage(location=folder_path)
            file_name = fs.save(file.name, file)

            # Store filename in MySQL
            FolderFile.objects.create(
                folder_code=folder_code,
                file_name=file_name,
                file_description=file_description,
                file_link=os.path.join(folder_code, file_name).replace("\\", "/"),
                uploader_id=student_id,
            )

            return redirect("view_folder_s", folder_code=folder_code)


        except Exception as e:
            return JsonResponse({"error": "File upload failed", "details": str(e)}, status=500)


    context = {
        "student_id": student_id,
        "full_name": full_name,
        "folder_files": folder_files,
        "folder_code": folder_code,
        "students": students,
        "shared_files": shared_files,
        "files": files
    }
    return render(request, "student/folder_contents.html", context)


def view_folder_f(request, folder_code):
    """ Faculty view of folder with file listing. """
    faculty_id = request.session.get("faculty_id")
    full_name = request.session.get("a_fullname")

    if not faculty_id:
        return redirect(reverse("faculty_login"))

    folder_files = FolderFile.objects.filter(folder_code=folder_code)
    students = StudentAccount.objects.all()
    shared_files = FilesShared.objects.filter(folder_code=folder_code)

    files = {
        "pdfs": [],
        "images": [],
        "videos": []
    }

    folder_path = os.path.join(NETWORK_DRIVE_PATH, folder_code)
    print(folder_path)

    if os.path.exists(folder_path):
        all_files = os.listdir(folder_path)

        for file in all_files:
            file_record = folder_files.filter(file_name=file).first()  # Get file info if exists in DB
            file_info = {
                "file_name": file,
                "file_description": file_record.file_description if file_record else "No description",
                "file_link": file,
            }

            if file.lower().endswith(PDF_EXTENSION):
                files["pdfs"].append(file_info)
            elif file.lower().endswith(IMAGE_EXTENSIONS):
                files["images"].append(file_info)
            elif file.lower().endswith(VIDEO_EXTENSIONS):
                files["videos"].append(file_info)


    if request.method == "POST":
        try:
            # Debugging: Print request data
            print("POST Data:", request.POST)
            print("FILES Data:", request.FILES)

            if "upload_file" not in request.POST:
                return JsonResponse({"error": "Missing 'upload_file' field"}, status=400)

            if "file_link" not in request.FILES:
                return JsonResponse({"error": "No file uploaded"}, status=400)

            file = request.FILES["file_link"]
            file_description = request.POST.get("file_description", "")
            folder_code = request.POST.get("folder_code", folder_code)  # Ensure folder_code is provided

            # Define the folder path in the network drive
            folder_path = os.path.join(settings.MEDIA_ROOT, folder_code)
            os.makedirs(folder_path, exist_ok=True)  # Create the folder if it doesn't exist

            # Save file in the specified folder
            fs = FileSystemStorage(location=folder_path)
            file_name = fs.save(file.name, file)

            # Store filename in MySQL
            FolderFile.objects.create(
                folder_code=folder_code,
                file_name=file_name,
                file_description=file_description,
                file_link=os.path.join(folder_code, file_name).replace("\\", "/"),
                uploader_id=faculty_id,
            )

            return redirect("view_folder_f", folder_code=folder_code)


        except Exception as e:
            return JsonResponse({"error": "File upload failed", "details": str(e)}, status=500)


    context = {
        "faculty_id": faculty_id,
        "full_name": full_name,
        "folder_files": folder_files,
        "folder_code": folder_code,
        "students": students,
        "shared_files": shared_files,
        "files": files
    }
    return render(request, "faculty/folder_contents.html", context)


