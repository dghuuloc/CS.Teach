## Django Setup Wiki

Instructions for setting up Django projects.

**Table of Contents**

1. [General Setup for all Django Projects](#general-setup-for-all-django-projects)
2. [Django REST Framework](#django-rest-framework)
3. [Django GraphQL](#django-graphql)
4. [Django MongoDB](#django-mongodb)

## General Setup for all Django Projects

### Recommended Technologies

- Django 3.x
- [Poetry](https://python-poetry.org/docs/cli/#install)
- Postgres

### Install Setup

1. Must have Python 3, Django, and Postgres installed
2. Make sure Postgres is running on your machine
3. `django-admin startproject [projectname]`
4. Create a virtual environment: `python -m venv venv`
5. Go into your virtual environment: `source venv/bin/activate`
6. Run `poetry init` -> This will create a TOML file for you with your project config where Poetry will add your dependencies
7. Install `psycopg2-binary`: `poetry add psycopg2`
8. Create a folder named `apps`
9. Create an `__init__.py` file inside of the `apps` folder

### Users Setup

1. Create a `users` app: `mkdir apps/users` and then `python manage.py startapp users apps/users`

### Database Setup

*Postgres is optional, but recommended in the official Django docs.*

1. Setup Postgres in Django settings.py file:

``` python
'default': {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': '[dbname]',
    'USER': '[dbadmin]',
    'PASSWORD': '',
    'HOST': 'localhost',
    'PORT': '',
}
```
1. Setup Database in Postgres
    1. Create the database: `CREATE DATABASE [dbname];`
    1. Create DB user: `CREATE USER [dbadmin];
    1. Grant privilages to user for our database: `GRANT ALL PRIVILEGES ON DATABASE coducat TO [dbadmin];`
    1. Run migrations: `python manage.py migrate`

### More Setup

1. Create an admin user for logging into the Django admin interface: `python manage.py createsuperuser`
1. Run the app: `python manage.py runserver`
1. View the API at `localhost:8000` and the admin interface at `localhost:8000/admin`

## Django REST Framework

This builds off of the general Django setup steps.

### Technologies

- Django REST Framework
    
### REST Framework Setup

1. Install the REST Framework with Poetry: `poetry add djangorestframework`
1. Set up Django REST Framework
    1. Add DRF to `INSTALLED_APPS`: `'rest_framework'`
    1. Add DRF URLs to urlpatterns: `path('', include('rest_framework.urls')),`
1. You can run the Django app normally: `python manage.py runserver`
1. Now go to localhost:8000 in your browser and you should see Django REST frameworks default page showing you all the routes you have available to you.

### Apps Setup

1. Create apps
1. Create Models
1. Setup Admin interface
1. Create `urls.py` file
1. Setup URLs
1. Setup Views

### Optional Setup

1. Setup token auth
1. Setup nested routes: `rest_framework_nested`
1. Pagination
1. Timestamp util for models

## Django Graphql

### Technologies

- [Django Graphene](https://github.com/graphql-python/graphene-django)
- [Django GraphQL JWT](https://github.com/flavors/django-graphql-jwt)
- [Graphiql](https://github.com/graphql/graphiql)
- [Postman](https://www.postman.com/graphql)

## Django MongoDB

### Technologies

- MongoDB (Running locally)
- [Djongo](https://www.djongomapper.com/get-started)
