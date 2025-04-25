# <p align="center">Registration</p>

## Login

To support this behavious, we first link the login, and also logout, views from `django.contrib.auth.views` in the project `urls` file

``` python
# ./urls.py

from django.urls import path
from django.contrib import admin
from django.contrib.auth import views

urlpatterns = [
  path('admin/', admin.site.urls),
  path('accounts/login/', views.LoginView.as_view(), name='login'),
  path('accounts/logout/', views.LogoutView.as_view(), name='logout'),
  ]
```
And create the login form template as expected by the Django login view by default in `registration/login.html`. Hjowever, to make it possible for Django to find templates, we first create a `templates`folder in the project root and another in the application. We then register them as default templates folders in `/settings.py` defining `DIRS` in TEMPLATES

``` python
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        ...
```

Then, we can define the login form in `registration/login.html`

``` html
<html>
<head>
  <title>Login Form</title> 
</head>
<body>
  {% if form.errors %}
  <p>Your username and password didn't match. Please try again.</p>
  {% endif %}
  <form method="POST" action="{% url 'login' %}">
    {% csrf_token %}
    <table>
      <tr>
        <td>{{ form.username.label_tag }}</td>
        <td>{{ form.username }}</td>
      </tr>
      
      <tr>
        <td>{{ form.password.label_tag }}</td>
        <td>{{ form.password }}</td>
      </tr>
    </table>
    <input type="submit" value="login" />
    <input type="hiden" name="next" value="{{ next }}" />
  </form>
</body>
</html>
```
