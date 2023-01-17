import os

from .base import *

# Database
# https://docs.djangoproject.com/en/4.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.getenv('POSTGRES_DB', 'nov-11'),
        'USER':  os.getenv('POSTGRES_USER', 'postgres'),
        'PASSWORD':  os.getenv('POSTGRES_PASSWORD', '123'),
        'HOST':  os.getenv('POSTGRES_HOST', 'db'),
        'PORT': os.getenv('POSTGRES_PORT', '5432'),
        'ATOMIC_REQUESTS': True
    }
}


STATIC_ROOT = '/static'


EMAIL_BACKEND = os.getenv('EMAIL_BACKEND', 'django.core.mail.backends.console.EmailBackend')

EMAIL_HOST = os.getenv('EMAIL_HOST', 'localhost')
EMAIL_PORT = int(os.getenv('EMAIL_PORT', '555'))
EMAIL_HOST_USER = os.getenv('EMAIL_HOST_USER', 'test')
EMAIL_HOST_PASSWORD = os.getenv('EMAIL_HOST_PASSWORD', 'test')
EMAIL_USE_TSL = os.getenv('EMAIL_USE_TSL', 'False').lower() in ('1', 'true')


ANYMAIL = {
    "MAILGUN_API_KEY": os.getenv('EMAIL_HOST_PASSWORD', ''),
    "MAILGUN_API_URL": "https://api.eu.mailgun.net/v3",
}


SITE_URL=os.getenv('SITE_URL', 'http://localhost:8000')