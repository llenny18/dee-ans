from django.urls import path
from . import views

urlpatterns = [
    path('', views.read_html, name=''),
    path('/', views.read_html, name='/'),
    path('s_dashboard', views.read_html_s, name='s_dashboard'),
    path('read-html/', views.read_html, name='read_html'),
    path('admin_logs/', views.admin_logs, name='admin_logs'),
    path('admin_accounts/', views.admin_accounts, name='admin_accounts'),
    path('student_logs/', views.student_logs, name='student_logs'),
    path('student_accounts/', views.student_accounts, name='student_accounts'),
    path('admin_login/', views.login_admin, name='admin_login'),
    path('admin_reg/', views.reg_admin, name='admin_reg'),
    path('student_login/', views.login_student, name='student_login'),
    path('student_reg/', views.reg_student, name='student_reg'),
    path('admin_folder/', views.admin_folders, name='admin_folder'),
    path('student_folder/', views.student_folders, name='student_folder'),
]
