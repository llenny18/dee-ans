"""
WSGI config for cbsfile project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/5.1/howto/deployment/wsgi/
"""
import os
from django.core.wsgi import get_wsgi_application
from django.conf import settings

# Mount Network Drive
if os.name == "nt":
    drive = settings.NETWORK_DRIVE
    command = f'net use {drive["drive_letter"]} {drive["network_path"]} /user:{drive["username"]} "{drive["password"]}" /persistent:{"yes" if drive["persistent"] else "no"}'
    os.system(command)


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'cbsfile.settings')

application = get_wsgi_application()
