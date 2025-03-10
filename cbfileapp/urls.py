from django.urls import path, include 
from . import views
from captcha import urls as captcha_urls

urlpatterns = [
    path('captcha/', include(captcha_urls)),
    path('', views.home, name='home'),
    path('s_dashboard', views.read_html_s, name='s_dashboard'),
    path('a_dashboard', views.read_html, name='a_dashboard'),
    path('read-html/', views.read_html, name='read_html'),
    path('admin_logs/', views.admin_logs, name='admin_logs'),
    path('admin_accounts/', views.admin_accounts, name='admin_accounts'),
    path('student_logs/', views.student_logs, name='student_logs'),
    path('student_accounts/', views.student_accounts, name='student_accounts'),
    path('admin_login/', views.login_admin, name='admin_login'),
    path('admin_reg/', views.reg_admin, name='admin_reg'),
    path('student_login/', views.login_student, name='student_login'),
    path('student_reg/', views.reg_student, name='student_reg'),
    path('student_everif/', views.student_everif, name='student_everif'),
    path("verify/otp/", views.verify_otp, name="verify_otp"),
    path('admin_folder/', views.admin_folders, name='admin_folder'),
    path('student_folder/', views.student_folders, name='student_folder'),
    path('student/join-folder/', views.join_folder, name='join_folder'),
    path('admin_logout/', views.logout_admin, name='admin_logout'),
    path('student_logout/', views.logout_student, name='student_logout'),
    path('faculty_login/', views.login_faculty, name='faculty_login'),
    path('faculty_logout/', views.logout_faculty, name='faculty_logout'),
    path('f_dashboard/', views.read_html_f, name='f_dashboard'),
    path('faculty_folders/', views.faculty_folders, name='faculty_folders'),
    path('view_folder_s/<str:folder_code>/', views.view_folder_s, name='view_folder_s'),
    path('view_folder_f/<str:folder_code>/', views.view_folder_f, name='view_folder_f'),
    path("forgot_password/", views.send_otp_pass, name="send_otp"),
    path("enter_otp/", views.enter_otp, name="enter_otp"),
    path("change_password/", views.change_password, name="change_password"),
    path("files/", views.list_network_files, name="list_network_files"),
    path("files/<str:filename>/", views.serve_file, name="serve_file"),
    path("f_files/<str:folder_code>/<str:filename>/", views.serve_folder_file, name="f_serve_file"),

]
