from django import forms
from captcha.fields import CaptchaField

class MyForm(forms.Form):
    username = forms.CharField(max_length=100)
    email = forms.EmailField()
    captcha = CaptchaField()  # Generates an image-based CAPTCHA
