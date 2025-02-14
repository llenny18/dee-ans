from django.db import models

class FacultyInfo(models.Model):
    id = models.AutoField(primary_key=True)
    gsuite = models.EmailField(unique=True)
    first_name = models.CharField(max_length=50)
    middle_name = models.CharField(max_length=50, blank=True, null=True)
    last_name = models.CharField(max_length=50)
    class Meta:
        managed = False
class StudentInfo(models.Model):
    sr_code = models.CharField(max_length=10, primary_key=True)
    first_name = models.CharField(max_length=50)
    g_email = models.EmailField(unique=True)
    middle_name = models.CharField(max_length=50, blank=True, null=True)
    last_name = models.CharField(max_length=50)
    class Meta:
        managed = False
class UserAccount(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50, unique=True)
    hashed_password = models.CharField(max_length=255)
    faculty = models.ForeignKey(FacultyInfo, on_delete=models.CASCADE, blank=True, null=True)
    student = models.ForeignKey(StudentInfo, on_delete=models.CASCADE, blank=True, null=True)
    EMAIL_VERIFIED_CHOICES = [
        ('no', 'No'),
        ('yes', 'Yes'),
    ]
    email_verified = models.CharField(max_length=3, choices=EMAIL_VERIFIED_CHOICES, default='no')

    class Meta:
        managed = False
        db_table = 'user_account'
        




class FacultyAdminLogs(models.Model):
    faculty_id = models.IntegerField()
    gsuite = models.CharField(max_length=100)
    first_name = models.CharField(max_length=50, null=True)
    middle_name = models.CharField(max_length=50, null=True)
    last_name = models.CharField(max_length=50, null=True)
    log_id = models.IntegerField()
    admin_id = models.IntegerField()
    action = models.CharField(max_length=255)
    timestamp = models.DateTimeField()
    ip_address = models.CharField(max_length=45, null=True)
    user_agent = models.TextField(null=True)

    class Meta:
        db_table = 'faculty_admin_logs'  # The name of the view
        managed = False  # Django will not manage this table
        


class StudentActivityLogs(models.Model):
    sr_code = models.CharField(max_length=10)
    first_name = models.CharField(max_length=50, null=True)
    middle_name = models.CharField(max_length=50, null=True)
    last_name = models.CharField(max_length=50, null=True)
    log_id = models.IntegerField()
    student_id = models.IntegerField()
    action = models.CharField(max_length=255)
    timestamp = models.DateTimeField()
    ip_address = models.CharField(max_length=45, null=True)
    user_agent = models.TextField(null=True)

    class Meta:
        db_table = 'student_activity_logs'  # The name of the view
        managed = False  # Django will not manage this table

class AdminLogs(models.Model):
    log_id = models.AutoField(primary_key=True)
    admin_id = models.CharField(max_length=255)
    action = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now_add=True)
    ip_address = models.GenericIPAddressField(null=True, blank=True)
    user_agent = models.TextField(null=True, blank=True)
    class Meta:
        managed = False
        db_table = 'admin_logs'

    def __str__(self):
        return f"Admin Log {self.log_id} - {self.action}"

class StudentLogs(models.Model):
    log_id = models.AutoField(primary_key=True)
    student_id = models.CharField(max_length=255)
    action = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now_add=True)
    ip_address = models.GenericIPAddressField(null=True, blank=True)
    user_agent = models.TextField(null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'student_logs'
        
class StudentAccount(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50)
    hashed_password = models.CharField(max_length=255)
    student_id = models.CharField(max_length=10)
    first_name = models.CharField(max_length=50, null=True, blank=True)
    middle_name = models.CharField(max_length=50, null=True, blank=True)
    last_name = models.CharField(max_length=50, null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'student_accounts'



class FolderFile(models.Model):
    file_id = models.AutoField(primary_key=True)
    folder_code = models.CharField(max_length=255)
    file_name = models.CharField(max_length=255)
    file_description = models.TextField(null=True, blank=True)
    file_link = models.CharField(max_length=255)
    uploader_id = models.CharField(max_length=255)

    class Meta:
        db_table = 'folder_files'  # The table name in MySQL
        managed = False  # Set to False if you don't want Django to manage the database table

    def __str__(self):
        return f"{self.file_name} in folder {self.folder_code}"

class StudentFolder(models.Model):
    id = models.AutoField(primary_key=True)
    student_id = models.CharField(max_length=255)
    folder = models.ForeignKey('FolderTns', on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'student_folder'  # The name of the table in the database
        managed = False  # Set to False if you don't want Django to manage the database table

    def __str__(self):
        return f"Student {self.student_id} - Folder {self.folder.folder_name}"


class StudentFolderView(models.Model):
    sr_code = models.CharField(max_length=10)
    student_first_name = models.CharField(max_length=50, null=True)
    student_middle_name = models.CharField(max_length=50, null=True)
    student_last_name = models.CharField(max_length=50, null=True)
    faculty_gsuite = models.CharField(max_length=100)
    faculty_first_name = models.CharField(max_length=50, null=True)
    faculty_middle_name = models.CharField(max_length=50, null=True)
    faculty_last_name = models.CharField(max_length=50, null=True)
    folder_name = models.CharField(max_length=255)
    description = models.TextField(null=True)
    unique_code = models.CharField(max_length=255)
    faculty_id = models.IntegerField()
    apicode = models.CharField(max_length=255)
    student_folder_created_at = models.DateTimeField()

    class Meta:
        db_table = 'student_folder_view'  # Name of the view in the database
        managed = False  # We don't want Django to manage the table, as it's a view

    def __str__(self):
        return f"{self.student_first_name} {self.student_last_name} - {self.folder_name}"



class FacultyFoldersView(models.Model):
    u_id = models.IntegerField()
    username = models.CharField(max_length=50)
    faculty_id = models.IntegerField(null=True, blank=True)
    faculty_first_name = models.CharField(max_length=50, null=True, blank=True)
    faculty_last_name = models.CharField(max_length=50, null=True, blank=True)
    faculty_email = models.EmailField(max_length=100, null=True, blank=True)
    student_id = models.CharField(max_length=10, null=True, blank=True)
    email_verified = models.CharField(max_length=3, choices=[('no', 'No'), ('yes', 'Yes')])
    folder_id = models.IntegerField()
    folder_name = models.CharField(max_length=255)
    description = models.CharField(max_length=455)
    unique_code = models.CharField(max_length=255)
    apicode = models.CharField(max_length=255)
    created_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'faculty_folders'
        
        
class FolderTns(models.Model):
    folder_name = models.CharField(max_length=255)
    unique_code = models.CharField(max_length=255, unique=True)
    description = models.CharField(max_length=455, unique=True)
    apicode = models.CharField(max_length=255)
    faculty_id = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'folder_tns'  # The name of the table in the database
        managed = False  # Set to False if you want Django not to manage the database table

    def __str__(self):
        return self.folder_name


class FacultyAccount(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50)
    hashed_password = models.CharField(max_length=255)
    faculty_id = models.IntegerField()
    gsuite = models.CharField(max_length=100)
    first_name = models.CharField(max_length=50, null=True, blank=True)
    middle_name = models.CharField(max_length=50, null=True, blank=True)
    last_name = models.CharField(max_length=50, null=True, blank=True)

    class Meta:
        managed = False
        db_table = 'faculty_accounts'

class SharedFilesView(models.Model):
    share_id = models.IntegerField()
    folder_code = models.CharField(max_length=255)
    file_id = models.IntegerField()
    file_name = models.CharField(max_length=255)
    file_description = models.TextField()
    file_link = models.URLField()
    student_id = models.CharField(max_length=50)
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)

    class Meta:
        managed = False  # Since this is a database view
        db_table = 'shared_files_view'


class FilesShared(models.Model):
    share_id = models.AutoField(primary_key=True)
    folder_code = models.CharField(max_length=255)
    file_id = models.IntegerField()
    student_id = models.CharField(max_length=11)

    class Meta:
        db_table = 'files_shared'
        managed = False
