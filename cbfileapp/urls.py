from django.urls import path
from . import views

urlpatterns = [
    path('read-html/', views.read_html, name='read_html'),
]
