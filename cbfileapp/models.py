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
    class Meta:
        managed = False
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
    student = models.CharField(max_length=255)
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

class StudentFolder(models.Model):
    student_id = models.IntegerField()
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

class FolderTns(models.Model):
    folder_name = models.CharField(max_length=255)
    unique_code = models.CharField(max_length=255, unique=True)
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
