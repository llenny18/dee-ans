from django.shortcuts import render

def read_html(request):
    return render(request, 'html/index.html')
