# <p align="center">How to Create a Django Project: A Step-by-Step Guide</p>
---

## Create a Virtual Environment (Windows)
* **Create a Virtual Environment**
```
python -m venv djenv
```
* **Activate the virtual environment**
```
.\djenv\Scripts\activate
```
## Install Django Prerequisites
With your virtual environment activated, the next step is to install Django.
* **Install Django using pip**
```
pip install django
```
This will download and install the latest version of Django
* **Verify the installation by checking the version of Django**
```
python -m django --version
```
If Django is installed correctly, this command will return the version number

## Create a New Django Project
Now that Django is installed, you can create a new Django project.
* **Run the following command to create a new project**
```
django-admin startproject mysite .
```
Replace `mysite` with your desired project name.

> [!NOTE]
> The period `.` is crucial because it tells the script to install Django in your current directory (for which the period `.` is a short-hand reference).

### Understanding the Directory Structure
Once the project is created, you’ll notice that Django generates a directory structure that includes several important files and folders. Here’s a quick overview of the default structure:
```
myproject
├── manage.py
├── mysite
│   ├── asgi.py
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── djenv
│   └── ...
└── requirements.txt

```
* **manage.py:** A command-line utility that lets you interact with this Django project in various ways.
* **mysite/:** The inner directory as root
  * **init.py:** An empty file that tells Python that this directory should be considered a package.
  * **settings.py:** Contains settings/configuration for this Django project.
  * **urls.py:** The URL declarations for this Django project; a “table of contents” of your Django-powered site.
  * **asgi.py:** An entry-point for ASGI-compatible web servers to serve your project.
  * **wsgi.py:** An entry-point for WSGI-compatible web servers to serve your project.

### Run the Application
After creating the project and understanding the directory structure, you can now run your Django application to see it in action.
1. **Navigate to the project directory (where `manage.py` is located).**
```
cd .\myproject
```
2. **Run the development server with the following command**
```
python manage.py runserver
```
> [!NOTE]
> The `python manage.py` will be frequently used in your Django project, so get used to it. Also, running just python manage.py in the terminal, without any other argument, will show you the list of all its available options.

3. **If everythong is set up correctly, you should see output similar to:**
```
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
Run 'python manage.py migrate' to apply them.
May 19, 2025 - 21:30:15
Django version 5.2.1, using settings 'myproject.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
```
4. **Open your browser and go to `http://127.0.0.1:8000/`**
You should see the default Django welcome page

---
## Create Django Apps
Django projects are composed of apps. To create your first app, run the following command:
```
python manage.py startapp myapp
```
This will create a directory and files for your app.

### Register apps
To use your app in the project, add it to the `INSTALLED_APPS` list in the `settings.py` file within project directory:
```python
# mysite/settings.py
INSTALLED_APPS = [
    # ...
    'myapp',
]
```

## Define Models


## Migrate Database

## Create Superuser

## Create Views and Templates

## Configure URLS









