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
django-admin startproject myproject
```
Replace `myproject` with your desired project name.

### Understanding the Directory Structure
Once the project is created, you’ll notice that Django generates a directory structure that includes several important files and folders. Here’s a quick overview of the default structure:
```
myproject/
│
├── manage.py
├── myproject/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   ├── asgi.py
│   └── wsgi.py
```
* **manage.py:** A command-line utility that lets you interact with this Django project in various ways.
* **myproject/:** The inner directory with the same name as your project.
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















