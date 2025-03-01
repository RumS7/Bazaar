#!/usr/bin/env bash
# exit on error
set -o errexit

export PATH=$PATH:/usr/local/python3/bin
pip install -r requirements.txt
pip install gunicorn
python manage.py collectstatic --no-input
python manage.py migrate
if [[ $CREATE_SUPERUSER ]];
then
  python manage.py createsuperuser --no-input --email "$DJANGO_SUPERUSER_EMAIL"
fi