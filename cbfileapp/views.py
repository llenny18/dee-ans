from django.shortcuts import render
from django.db import connection
from django.shortcuts import render, redirect
from django.contrib.auth import login
from django.contrib import messages
from django.db import connection
from django.contrib.auth.hashers import check_password
from .models import FacultyAccount, StudentFolderView, AdminLogs, FacultyAdminLogs, StudentActivityLogs, StudentAccount
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.backends import default_backend
import os
import base64
from django.db.models import Prefetch
from django.shortcuts import redirect
from django.urls import reverse
from django.core.mail import send_mail


def send_email():
    subject = "Welcome to Django Mailer"
    message = "Hello! This is a test email sent from Django."
    from_email = "dece.nas.system@gmail.com"
    recipient_list = ["ediwawkiki@gmail.com"]

    send_mail(subject, message, from_email, recipient_list)
    return "Email sent successfully!"

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
    if request.method == 'POST':
        username_or_email = request.POST.get('email-username')
        password = request.POST.get('password')

        # Query the faculty account
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT u_id, username, hashed_password, first_name, last_name, middle_name, faculty_id  FROM faculty_accounts 
                WHERE username = %s OR gsuite = %s
            """, [username_or_email, username_or_email])
            faculty = cursor.fetchone()

        if faculty:
            u_id, username, hashed_password, first_name, middle_name, last_name, faculty_id = faculty

            # Assuming hashed_password is already hashed and we compare it with the derived hash of the entered password
            if decrypt(hashed_password, passwordUnique) == password:  # This comparison should check the plain password, not a hash
                request.session['faculty_id'] = u_id  # Store session
                request.session['a_fullname'] = f"{first_name} {middle_name} {last_name}"  # Store session for a_fullname

                messages.success(request, "Login successful!")
                return redirect('a_dashboard')  # Change this to your admin dashboard view
            else:
                messages.error(request, "Invalid password!")
        else:
            messages.error(request, "User not found!")

    return render(request, 'admin_p/a-login.html')


def read_html(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)

    # Pass the session data to the template
    context = {
        'faculty_id': faculty_id,
        'full_name': full_name,
    }

    return render(request, 'admin_p/index.html', context)

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
    
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    
    # If there is no faculty_id in the session, redirect to the admin login page
    if not faculty_id:
        return redirect(reverse('admin_login'))  # 'admin_login' should be the name of your login URL

    data = FacultyAdminLogs.objects.all()
    return render(request, 'admin_p/admin-logs.html', {'faculty_id': faculty_id, 'full_name': full_name,'data': data})

def student_logs(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    
    # If there is no faculty_id in the session, redirect to the admin login page
    if not faculty_id:
        return redirect(reverse('admin_login'))  # 'admin_login' should be the name of your login URL


    data = StudentActivityLogs.objects.all()

    return render(request, 'admin_p/student-logs.html', {'faculty_id': faculty_id, 'full_name': full_name,'data': data})

def admin_accounts(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    
    # If there is no faculty_id in the session, redirect to the admin login page
    if not faculty_id:
        return redirect(reverse('admin_login'))  # 'admin_login' should be the name of your login URL


    data = FacultyAccount.objects.all()
    return render(request, 'admin_p/admin-accounts.html', {'faculty_id': faculty_id, 'full_name': full_name,'data': data})

def student_accounts(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    
    # If there is no faculty_id in the session, redirect to the admin login page
    if not faculty_id:
        return redirect(reverse('admin_login'))  # 'admin_login' should be the name of your login URL


    data = StudentAccount.objects.all()
    return render(request, 'admin_p/student-accounts.html', {'faculty_id': faculty_id, 'full_name': full_name,'data': data})

def logout_admin(request):
    request.session.flush()
    return redirect('admin_login')

def logout_student(request):
    request.session.flush()
    return redirect('student_login')

def reg_admin(request):
    return render(request, 'admin_p/a-register.html')

def login_student(request):
    if request.method == 'POST':
        username_or_email = request.POST.get('email-username')
        password = request.POST.get('password')

        # Query the faculty account
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT u_id, username, hashed_password, first_name, last_name, middle_name, student_id  FROM student_accounts 
                WHERE username = %s 
            """, [username_or_email])
            faculty = cursor.fetchone()

        if faculty:
            u_id, username, hashed_password, first_name, middle_name, last_name, student_id = faculty

            # Assuming hashed_password is already hashed and we compare it with the derived hash of the entered password
            if decrypt(hashed_password, passwordUnique) == password:  # This comparison should check the plain password, not a hash
                request.session['student_id'] = student_id  # Store session
                request.session['s_fullname'] = f"{first_name} {middle_name} {last_name}"  # Store session for a_fullname

                messages.success(request, "Login successful!")
                return redirect('s_dashboard')  # Change this to your admin dashboard view
            else:
                messages.error(request, "Invalid password!")
        else:
            messages.error(request, "User not found!")

    return render(request, 'admin_p/a-login.html')

def reg_student(request):
    return render(request, 'student/s-register.html')


def admin_folders(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    
    # If there is no faculty_id in the session, redirect to the admin login page
    if not faculty_id:
        return redirect(reverse('admin_login'))  # 'admin_login' should be the name of your login URL


    # Check if faculty_id is available
    if not faculty_id:
        # Handle case when faculty_id is not found in the session
        return render(request, 'admin_p/folders.html', {'error': 'Faculty ID not found in session'})

    # Filter the data by faculty_id from the session
    student_folders = StudentFolderView.objects.filter(faculty_id=faculty_id) \
        .values('unique_code', 'folder_name', 'description', 'apicode', 'faculty_gsuite', 'student_first_name', 'student_last_name')

    # Group by unique_code for the folder
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
        # Append student details to the students list
        student_name = f"{folder['student_first_name']} {folder['student_last_name']}"
        grouped_folders[unique_code]['students'].append(student_name)

    # Pass the session data and grouped folders to the template
    context = {
        'faculty_id': faculty_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders
    }

    return render(request, 'admin_p/folders.html', context)


def student_folders(request):
    
    student_id = request.session.get('student_id', None)
    full_name = request.session.get('s_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not student_id:
        return redirect(reverse('student_login'))  # 'admin_login' should be the name of your login URL

    # Filter the data by faculty_id from the session
    student_folders = StudentFolderView.objects.filter(sr_code=student_id) \
        .values('unique_code', 'folder_name', 'description', 'apicode', 'faculty_gsuite', 'student_first_name', 'student_last_name')

    # Group by unique_code for the folder
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
        # Append student details to the students list
        student_name = f"{folder['student_first_name']} {folder['student_last_name']}"
        grouped_folders[unique_code]['students'].append(student_name)

    # Pass the session data and grouped folders to the template
    context = {
        'student_id': student_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders
    }

    return render(request, 'student/folders.html', context)
