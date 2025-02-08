from django import forms
from captcha.fields import CaptchaField

class MyForm(forms.Form):
    captcha = CaptchaField()  # Generates an image-based CAPTCHA
