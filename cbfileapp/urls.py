from django.urls import path
from . import views

urlpatterns = [
    path('', views.read_html, name=''),
    path('/', views.read_html, name='/'),
    path('read-html/', views.read_html, name='read_html'),
    path('admin_logs/', views.admin_logs, name='admin_logs'),
    path('admin_accounts/', views.admin_accounts, name='admin_accounts'),
    path('student_logs/', views.student_logs, name='student_logs'),
    path('student_accounts/', views.student_accounts, name='student_accounts'),
]
