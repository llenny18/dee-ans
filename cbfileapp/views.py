from django.shortcuts import render
from django.db import connection

def read_html(request):
    return render(request, 'admin_p/index.html')


def fetch_data(query):
    with connection.cursor() as cursor:
        cursor.execute(query)
        columns = [col[0] for col in cursor.description]
        return [dict(zip(columns, row)) for row in cursor.fetchall()]

def admin_logs(request):
    query = "SELECT * FROM admin_logs"
    data = fetch_data(query)
    return render(request, 'admin_p/admin-logs.html', {'data': data})

def student_logs(request):
    query = "SELECT * FROM student_logs"
    data = fetch_data(query)
    return render(request, 'admin_p/student-logs.html', {'data': data})

def admin_accounts(request):
    query = "SELECT * FROM admin_accounts"
    data = fetch_data(query)
    return render(request, 'admin_p/admin-accounts.html', {'data': data})

def student_accounts(request):
    query = "SELECT * FROM student_accounts"
    data = fetch_data(query)
    return render(request, 'admin_p/student-accounts.html', {'data': data})

def login_admin(request):
    return render(request, 'admin_p/a-login.html')

def reg_admin(request):
    return render(request, 'admin_p/a-register.html')
