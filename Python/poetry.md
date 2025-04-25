# Setting up a Django project with poetry

Poetry on the other hand:

> __poetry__ is tool to handle dependency installation as well as building and packaging of Python packages. It only needs one file to do all of that: the new, __pyproject.toml__.

## installise a new project

### Starting a new project 

We can now start a new Python project by using:

``` shell
$ poetry new project_name
```

> Note: For existing projects, you can use the __poetry init__

### Strating a existing project

``` shell 
$ mkdir demoproject && cd $_
```
Using poetry to initialise the project

``` shell
$ poetry init
```

Poetry writes the __generated file__ content to a __pyproject.toml__ file in your project directory.

- Creating a Virtual Evironment

``` shell
$ poetry install
```

- Adding Dependencies
Let's add two packages to the project

``` shell
$ poetry add pendulum coo
```

- Adding Dev Dependencies

These dependencies will be available only during development, Poetry will not include them when building and publishing the project.

``` shell
$ poetry add -D flake8 mypy
```
- Removing dependencies

``` shell
$ poetry remove coo
```
or 

``` shell
$ poetry remove -D mypy
```

## Working on Django project

We're going to add Django as a dependency of the demoproject.

### Install Django 

``` shell
$ poetry add django
```
poetry writes a __poetry.lock__ file to the demoproject directory.

Now that we have Django installed we can start a new project using the __django-admin__ command.

``` shell
$ poetry run django-admin startproject demoproject .
```
For those of you familiar with Django already this should look just like a fresh Django app directory.

``` shell
.
├── demoproject
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── poetry.lock
└── pyproject.toml
```

### Makemigration

``` shell
$ poetry run python manage.py makemigration
```

### Migrates

``` shell
$ poetry run python manage.py migrate
```

### Run server

``` shell
$ poetry run python manage.py runserver
```

### Create superuser

``` shell
$ poetry run python manage.py createsuperuser
```

### Export dependencies to a requirements.txt

If you need to have the `requirements.txt` file with all dependencies, you can run 

``` shell
$ poetry export -f requirements.txt --output requirements.txt
```
or

``` shell
$ poetry export -f requirements.txt > requirements.txt
```

## How to use poetry on Window

### Install poetry on Window

```
C:\Users\[User_name]>curl -sSL https://install.python-poetry.org | python -
```

### Setting PATH on Variable Environment

`%APPDATA%\pypoetry`

### Check poetry version

```
poetry --version
```

## Reference

[Python projects with Poetry](https://www.pythoncheatsheet.org/blog/python-projects-with-poetry-and-vscode-part-1/)

[Deploying Django App](https://dev.to/render/deploying-your-django-3-app-239a)

[Setting up a Django app in Docker with poetry](https://meesha.blog/2021/setting-up-a-django-app-in-docker-with-poetry.html)

[Development](https://wemake-django-template.readthedocs.io/en/latest/pages/template/development.html)

