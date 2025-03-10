"""
WSGI config for cbsfile project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/5.1/howto/deployment/wsgi/
"""

import os
import subprocess

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'cbsfile.settings')

from django.core.wsgi import get_wsgi_application
from django.conf import settings

# Mount Network Drive (Windows Only)
if os.name == "nt" and hasattr(settings, "NETWORK_DRIVE"):
    drive = settings.NETWORK_DRIVE
    command = [
        "net", "use", drive["drive_letter"], drive["network_path"],
        "/persistent:yes" if drive.get("persistent", False) else "/persistent:no"
    ]
    
    try:
        subprocess.run(command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Failed to mount network drive: {e}")

application = get_wsgi_application()
