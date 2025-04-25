# Django Crispy Forms

## Install Django Crispy Forms

``` shell
$ pip install django-crispy-forms
```

Add **crispy_forms** in your *settings.py* file under the list of **INSTALLED_APPS**

``` python
INSTALLED_APPS = [
  ...
  'crispy_forms',
]
```
## Select Template Pack for Django Crispy Forms

Django Crispy Forms have built-in support for CSS frameworks like **bootstrap, bootstrap3, bootstrap4, foundation, uni-form, and tailwind**. To select a template pack add the below code in *settings.py*.

``` python
CRISPY_TEMPLATE_PACK = 'bootstrap4'
```
## Apply Crispy Tag To Your Form Element

In order to apply the ***crispy tag*** to your *ModelForm* object use the code below

``` html
{% load crispy_forms_tags % }

<form method="post" class="uniForm">
    {{ form|crispy } }
</form>
```


