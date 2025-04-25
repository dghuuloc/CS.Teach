# <p align="center">Django First Steps for Total Beginners</p>
---


## Why you should learn Django

The key features and functionalities that make Django outstanding are:

- Open Source
- I supports the Full Stack Framework
- Authentication
- URL Routing
- Templating Engine
- DRY (Don't Repeat Yourself)
- ORM Mapper
- It provides Database schema migrations for common database like PostgreSQL, MySQL, SQLite, Oracle under the third-party drivers.
- A variation of MVC Architecture called MVT 
- Inbuit Admin Panel
- Excellent and Fast debugger interface
- ASGI (Asynchronous Server Gateway Interface) and WSGI (Web Server Gateway Interface compliant in Django

## What is MVT Architecture in Django?

### Django MVT Pattern

Django follows MVT (Models-Views-Templates) architecture, wherein Templates is replaced for View and View for Controller. The working is the same with just change in the terminologies.

<p align="center"><img src="https://techvidvan.com/tutorials/wp-content/uploads/sites/2/2021/06/Architecture-and-components-normal-image.jpg"/></p>

### How MVT Pattern Works?

![django MVT ](https://i.imgur.com/vCofEWY.png)

It is based on 3 main concepts. Model (data), View (User interaction with data), Template (How the users see the data).

### Models

Models are Python classes, which define all the fields and behavior of the data you are willing to store. Normally each model refers to a unique table on the database

#### Using Django Models to create your own database tables

Notice that Django models are created as classes that inherit from the `models.Model` Django class. We don't need to add `id` column for each model in our code because, in the `/settings.py` file, the variable `DEFAULT_AUTO_FIELD` is configured to create for every model table an `id`.

### Views

Views in their simplest expression, are callables that take a request from the user and generate a response. Between that process occurs the business logic. I know that “business logic” is a pretty obscure concept, so let me explain exactly what it is. Business logic is the way data is created, stored, and deleted, that’s all.

### Templates

Templates are text documents (Usually Html) that are shown to the users. Its purpose is to present data as clean as possible. Django incorporates a mini-language called __Django template language (DTL)__ which lets you incorporate some of the power of python in text documents.

#### Configuration Template

Open `/settings.py` file, import the `os` module and, in the variable `TEMPLATES`, you need to update the `DIRS` config under as follows

``` python
# settings.py
import os
...

TEMPLATES = [
    {
        ...
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        ...
    },
]
```
Please notice here the following new structures presented in `*.html` file

- `{% block head %}` and `{% endblock head %}`
- `{% block content %}` and `{% endblock content %}`
- `{% if title %}` and `{% else %}` and `{% endif %}`

Finally, notice the double curly brackets in `{{ }}`. This is the way Django has to render Python variables passed by the views to the templates

Each of `*.html` files starts with `{% extends "..." %}`, indicating that we are inheriting the template information from another `*.html` file. Moreover, the HTML that we want to be displayed by each page is between the `{% block content %}` ... `{% endblock content %}` tags. 

## Django Project Structure

```
[projectname]/                  <- project root
├── [projectname]/              <- Django root
│   ├── __pycache__/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   ├── urls.py
│   └── wsgi.py
├── [appname]/
│   ├── __pycache__/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── forms.py
│   ├── models.py
│   ├── tests.py
│   ├── urls.py
│   ├── views.py
│   └── templates/
│       └── [appname]
│           └── *.html
├── static/
│   ├── images/
│   ├── js/
│   └── styles/
└── templates/
│   ├── main.html
│   └── navbar.html
├── manage.py
├── requirements.txt
└── README.md
```

- `admin.py`: Here we can register our models in the admin page 
- `tests.py`: This file is where we make our unit tests
- `models.py`: Where we create our models, and where we interact with our database
- `apps.py`: Configuration of our app. We've never touch it
- `views`: All of our business logic lives here. This file contains the views that will render our templates
- `/migrations`: Here is where migrations live. I'll create a post about it, but as a quick concept a migration is a recording of the changes of our models.

## Let's get into Django

### Create Virtual Environment for Project

Create a project folder

```
$ mkdir project_name && cd $_
```

Create a new virtual environment using `venv` Python module.

```
$ python -m venv venv
```

Activate the virtual environment

```
$ source venv/bin/activate
```

Going forwoard, we will install Django and setup our Django app inside the virtual environment

``` 
pip install django djangorestframework psycopg2
```
We installed thr following packages:

- `Django`: the Django package that allows us to work with the Django framework and create Django apps
- `Django Rest Framework`: this toolkit gives us the features to create and use RESTful APIs with Django
- `psycopg2`: PostgreSQL package that connects our app to PostgreSQL

### Create Django Project

Start a Django project using the following command:

```
$ django-admin startproject <project_name>
```

Move into the create project with `cd project_name`. This is the root directory of your application

### Create Apps

To create your app, make sure you're in the same directory as __manage.py__ and type this command:

```
$ python manage.py startapp <app_name>
```

This creates a Django folder structure after creating project and apps

```
.
├── <project_name>
│   ├── asgi.py
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
└── <app_name>
    ├── admin.py
    ├── apps.py
    ├── __init__.py
    ├── migrations
    │   └── __init__.py
    ├── models.py
    ├── tests.py
    └── views.py
```

In this point, We need to add the `rest_framework` and `<app_name>` into the `settings.py` file so it will be active in our project.

``` python
INSTALLED_APPS = [
   ...
    'rest_framework',
    'customer', #new
]
```

### Setting Database

To get Python working with Postgres, you will need to install the __“psycopg2”__ module

```
pip install psycopg2
```

#### Creating Database for Django Project

We shall change to the user to create our database and new user

```
sudo su - postgres
```

`psql` gives us access to the Postgres interactive terminal where we can use the PostgreSQL queries

```
psql
```

Now, we shall create a database for this project. Always make sure to create a separate database for each project you work on

```
CREATE DATABSE  mydb;
```
#### Creating a Databse User

We'll create a database user for our database. We will call the user `myuser`. Replace `password` with a strong password below

```
CREATE USER myuser WITH PASSWORD 'password';
```

Let us now grant access right to our new user to enable it to work on the database

```
GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
```

We can the exit the current user's shell session and get back to the `postgres` user's session

```
\q
```

Now, let us leave the PostgreSQL interactive terminal back to the terminal

```
exit
```

#### Setting up Django Database Configuration

We have created a `postgreSQl` database and a Django project. Now, open the `settings.py` file and change database settings to use the PostgreSQL database

``` python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'mydb',
        'USER': 'myuser',
        'PASSWORD': 'mypass',
        'HOST': 'localhost',
        'PORT': '',
    }
}
```
The `makemigrations` command is responsible for creating new migrations based on the changes you have made to our models.
```
python manage.py makemigrations
```

The `migrate` command will execute SQL vaf create some default tables in our database

```
python manage.py migrate
```

### Run Server

And also start the development server with this command:

```
$ python manage.py runserver
```
### Superuser

First we'll need to create a user who can login to the admin site. Run the following command:

``` 
$ python manage.py createsuperuser
```

## Reference

- [Django Tutorials: The Ultimate Guide 2022](https://masteringbackend.com/posts/django-tutorial-the-ultimate-guide#chapter1)
- [A Guide to Build a URL Shortener App with Django](https://geekflare.com/build-url-shortener-app-in-django/)
- [Creating a Django App Using PostgreSQL Database](https://www.section.io/engineering-education/django-app-using-postgresql-database/)
- [Django Rest Framework with PostgreSQL: A CRUD Tutorial](https://hashnode.com/post/django-rest-framework-with-postgresql-a-crud-tutorial-ckljp09iz02zb3es17h1h5aou)
- [Django Working Directory Structure](https://www.delftstack.com/howto/django/django-project-structure/)
