# Django

---

## Django Commands

- Create a Django project

``` shell
$ django-admin startproject <project_name>
```

You should end up with something like this:

``` shell
project_name/
│
├── project_name/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
│
├── venv/
│
└── manage.py
```

- Create a virtual environment

``` shell
$ python -m venv venv
```

- Activate the virtual environment

``` shell
$ source bin/venv/activate
```

- Install Django

``` shell
$ pip install django
```

- Make migrations commands

``` shell
$ python manage.py makemigrations
```

- Migrate Command

``` shell
$ python manage.py migrate
```

- Create a Django App

``` shell
$ python manage.py startapp <app_name>

- Create a superuser

``` shell
$ python manage.py creatsuperuser
```

- Change the password

``` shell
python manage.py changepassword <username>

- Run server

``` shell
$ python manage.py runserver
```

## Django using on Window

- Install Virtualenv

```
python -m pip install virutalenv
```

- Create Virtual environment

```
virtualenv env

python -m venv env
```

- Activate or Deactivate

```
env\Scripts\activate
```

```
env\Scripts\deactivate
```

- Create requirements file for managing dependencies

```
pip freeze > requirements.txt
```

- Install required modules in existing project

```
pip install -r requirements.txt
```

