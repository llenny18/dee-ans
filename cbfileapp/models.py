from django.db import models

class FacultyInfo(models.Model):
    id = models.AutoField(primary_key=True)
    gsuite = models.EmailField(unique=True)
    first_name = models.CharField(max_length=50)
    middle_name = models.CharField(max_length=50, blank=True, null=True)
    last_name = models.CharField(max_length=50)

class StudentInfo(models.Model):
    sr_code = models.CharField(max_length=10, primary_key=True)
    first_name = models.CharField(max_length=50)
    middle_name = models.CharField(max_length=50, blank=True, null=True)
    last_name = models.CharField(max_length=50)

class UserAccount(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50, unique=True)
    hashed_password = models.CharField(max_length=255)
    faculty = models.ForeignKey(FacultyInfo, on_delete=models.CASCADE, blank=True, null=True)
    student = models.ForeignKey(StudentInfo, on_delete=models.CASCADE, blank=True, null=True)

class AdminLogs(models.Model):
    log_id = models.AutoField(primary_key=True)
    admin = models.CharField(max_length=255)
    action = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now_add=True)
    ip_address = models.GenericIPAddressField(null=True, blank=True)
    user_agent = models.TextField(null=True, blank=True)

    class Meta:
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
        db_table = 'student_logs'