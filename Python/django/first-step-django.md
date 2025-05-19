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
