## Installation & Setup 

### Setup devsearch and projects app

``` shell
$ django-admin startproject devsearch 
$ cd devsearch
$ python -m venv venv
$ source venv/bin/activate
$ poetry add django
$ python manage.py startapp projects
```
### Register app into settings.py

``` python
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'projects.apps.ProjectsConfig', #new command
]
```
