![Django REST Framework](https://blog.logrocket.com/wp-content/uploads/2021/01/django-rest-framework-build-api.png)

# Django REST Framework Tutorial - A Beginners Guide

---

## What happens in a simple Django Rest Framework application?

![Django Requesr-Response Cycle](https://i.stack.imgur.com/NLlwq.png)

## What is an API?

Django REST Framework lets ou create RESTful APIs: A way to transfer information between an interface and a database.

## Setting up Django and Our Application

Let's start off by initializing a virtual environment

``` shell
$ mkdir drf_tutorial && cd $_
$ python -m venv venv
$ source venv/bin/activate
```

Then install django and djangorestframework

``` shell
$ pip install django djangorestframework
```

Finally, we can create a project and app, call `api_app`:

``` shell
$ django-admin startproject shopping_cart cd $_
$ python manage.py start aip_app
```

open the file under `shopping_cart\setting.py` and add the `api_app` and `rest_framework` into the `INSTALLED_APPS` list.

``` python
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'api_app',
]
```

Once registered, we can apply the migration (initialize the database) and create a superuser to keep an eye on the database:

``` shell
$ python manage.py migrate
$ python manage.py createsuperuser
```
We can start the server via the `runserver` command.

``` shell
$ python manage.py runserver
```

## Creating a REST API Django using Django REST Framework

### Domain Model

Let's create a simple model, `CartItem`, to denote an online shopping cart item.

``` python 
from django.db import models

class CartItem(models.Model):
  product_name = models.CharField(max_length=200)
  product_price = models.FloatFielld()
  product_quantity = models.PositiveIntegerField()
```

Once defined, we'll register our model with Django.

``` python
from django.contrib import admin
from .models import CartItem
```

Once a new model has been defined, we'll need to makemigrations for our model to be reflected in the database.

``` shell
$ python manage.py makemigrations
$ python manage.py migrate
```
We will use a serializer to convert our model object to JSON before we send the response. And wehen we receive a JSON request, our serializer will convert it to the model object.

Let's create a `serializers.py` file in the `api_app` folder.

``` python 
from rest_framework import selializers
from .models import CartItem

class CartItemSerializer(serializers.ModelSerializer):
  product_name = serializers.CharField(max_lenth=200)
  product_price = serializers.FloatField()
  product_quantity = serializers.IntegerField(required=False, default=1)
  
  class Meta:
    model = CartItem
    fields = ('__all__')
```
### The APIView Class

Like with pure Django, DRF allows both class-based views and function-based views for the API.

We will be using the `APIView` class to represent views. The `post()`, `get()`, `patch()` and `delete()` methods that we can use in tandem with the methods, such as `all()`, `save()` and `delete()` to facilitate CRUD functionality for an app.


Let's apply it to the reosource `cart-items`:

|Endpoint       |HTTP Method|CRUD Method|Result                         |
|---------------|-----------|-----------|-------------------------------|
|api/           |GET        |READ       |Get all cart-items             |
|api/           |POST       |CREATE     |Create new cart-items          |
|api/<int:id>   |GET        |READ       |Get cart-items details         |
|api/<int:id>   |PUT        |UPDATE     |Update cart-items              |
|api/<int:id>   |PATCH      |UPDATE     |Partial update of cart-items   |
|api/<int:id>   |DELETE     |DELETE     |Delete cart-items              |


#### Creating Entities - The POST Request Handler

A `POST` request is used to send data to the server enclosed in the request body. It is meant to be used when you'd linke to create new entities.

In `api_app/views.py`, create a new class with a `post()` method.

``` python 
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .serializers import CartItermSerializer
from .models import CartItem

class CartItemViews(APIView):
  def post(self, request):
    serializer = CartItemSerializer(data=request.data)
    if serializer.is_valid():
      serializer.save()
      return Response({'status': 'success', 'data': serializer.data}, status=status.HTTP_200_OK)
     else:
      return Response({'status':'error', 'data': serializer.errors}, status=status.HTTP_400_BAD_REQUEST)
```
Here, We created a `seializer` object from `request.data` using the `CartItemSerializer` we've created previously. The `is_valid()` function returns a `Boolean`value that indicates whether the request body cna be used to create a `CartItem` object. And the `save()` method will create a new instance of `CartItem`.

The `Response` must be initialized with te date to be returned. This data can be an instance of any type of Python object line `bool`, `str`, `dict` ect.

In `shopping_cart/urls.py` file, we'll expose an endoint to use our `post()` method.

``` python
from django.contrib import admin
from django.urls import path, include

urlpatterns =[
  path('admin/', admin.site.urls),
  path('api/', include('api_app.urls`),
]
```

In the `api_app` folder, create a new file called `url.py`, and link the `cart-items` locator with the `CartItemViews` class:

``` python 
from django.urls import path
from .views import CartItemViews

urlpatterns = [
  path('cart-items/', CartItemViews.as_view())
]
```
__Running the Server__:

Let's run the app and use our end-point `/api/cart-items`:

``` shell
$ python manage.py runserver
```
On another terminal, let's send a `POST` request to our end-point with some data:

``` shell
$ curl -X POST -H "Content-Type: application/json" http://127.0.0.1:8000/api/cart-items/ -d "{\"product_name\":\"name\",\"product_price\":\"41\",\"product_quantity\":\"1\"}"
```

You should also visit `http://127.0.0.1:8000/api/cart-items/` and you will see another remarkable feature of DRF. __a browsable API__.

It says that the `GET` method is _not allowed_ because we haven't created a `GET` handler for our `CartItemViews` yet.

#### Request Data Validation

Let's try making an invalid request to the endpoint `api/cart-items`:

``` shell
$ curl -X POST -H "Content-Type: application/json" http://127.0.0.1:8000/api/cart-items/ -d "{\"product_name\":\"name\",\"product_price\":\"41\",\"product_quantity\":\"One\"}"
```

#### Retrieving Entities - The GET Request Handler

There are two typical ways of retrieving resources:

- We can make a `GET` request to list __all__ the entities linled to a cart.
- We can retireve a particular entity from our cart by passing its `id` as a URl parameter.

The latter approach requeires an additional argument, `many`, to be passed as well:

``` python
serializer = CartItemSerializer(item, many=True)
```

Let's `GET` an object, given its `id`, and all of the other items in that cart _if_ the `id` hasn't been provided, by modifying the `api_app/views.py` file:

``` python
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .serializers import CartItemSerializer
from .models import CartItem

class CartItemViews(APIView):
    ...
    
    def get(self, request, id=None):
        if id:
            item = CartItem.objects.get(id=id)
            serializer = CartItemSerializer(item)
            return Response({'status': 'success', 'data': serializer.data}, status=status.HTTP_200_OK)
        items =  CartItem.objects.all()
        serializer = CartItemSerializer(items, many=True)
        return Response({'status':'success', 'data': serializer.data}, status=status.HTTP_200_OK)
```

If the optional `id` argument is omitted, the request returns all of the cart items instead of a particular one and in both cases - a `Response` lets the client know how the request fared and the serialized data is injected.

Let's hit our endpoint `api/cart-items/` with a `GET` request:

``` shell
$ curl -X GET http://127.0.0.1:8000/api/cart-items/
```

This will fetch the results as:

``` json
{
    "status": "success",
    "data": [
        {
            "id": 1,
            "product_name": "name",
            "product_price": 41.0,
            "product_quantity": 1
        }
    ]
}
```
Let's now modify the app's `urls.py` and add the path - `cart-items/<int:id>`, that points to our class `CartItemViews`.

At this point, `api_app/urls.py` would look linke this:

``` python 
from django.urls import path
from .views import CartItemViews

urlpatterns = [
    path('cart-items', CartItemViews.as_view()),
    path('cart-items/<int:id>', CartItemViews.as_view())
]
```
Now, when we hit the api/cart-items/1 endpoint,

``` shell
$ curl -X GET http://127.0.0.1:8000/api/cart-items/1
```
This would result in the following response:

``` json 
{
    "status": "success",
    "data": {
        "id": 1,
        "product_name": "name",
        "product_price": 41.0,
        "product_quantity": 1
    }
}
```

Here you can observe that `CartItemSerializer(item)` has returned the `CartItem` instance's data as a single JSON object instead of an array, as only one resource is expected to be returned.

#### Udating Entities - The PATCH REquest Handler

In order to update objects, we can use `POST` requests, targeting a certain `id`. Then, we can retrieve that object, update it and save it under the same `id` - persisting the change.

To decouple creation and update logic - we use `PATCH` requests to, well, patch existing resources and change them.

> The `APIView` class provides us with the `patch()` function - which handles `PATCH` requests and updates the data.

Going back again to `api_app/views.py` to add the PATCH request handler as below:

``` python 
... 
class CartItemViews(APIView):
    ...
    def patch(self, request, id=None):
        item = CartItem.objects.get(id=id)
        serializer = CartItemSerializer(item, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response({'status': 'success', 'data': serializer.data})
        else:
            return Response({'status': 'error', 'data': serializer.errors})
```
And as we are making an update, we will validate our serializer and then save it. It's time to send a PATCH request at `api/cart-items/1` and update out item:

``` shell
$ curl -X PATCH http://127.0.0.1:8000/api/cart-items/1 -H 'Content-Type: application/json' -d '{"product_quantity":6}'
```

#### Deleting Entities - The DELETE Request Handler

To remove an item from the cart, let's implement the `delete()` function, passing in the `id` of the object we'd like to delete. Then, calling `delete()` on the model itself, we can remove it from persistence.

We won't need to use a serializer for this purpose as there's no conversion between data and concrete objects. Instead of doing `CartItem.objects.get()` we can use the `get_object_or_404()` function that will automatically return a `404` response when the object with the given `id` is not present - since we won't be returning any info on the deleted entity itself.

Let's go back to `api_app/views.py` and add the `delete()` method:

``` python 
...
from django.shortcauts import get_object_or_404

class CartItemViews(APIView):
    ...
    def delete(self, request, id=None):
        item = get_object_or_404(CartItem, id=id)
        ite.delete()
        return Response({'status':'success', data': 'Item Deleted'})
```

Let's try to remove the item from our cart:

``` shell
$ curl -X "DELETE" http://127.0.0.1:8000/api/cart-items/1
```


## References

[Creating a REST API with Django REST Framework](https://stackabuse.com/creating-a-rest-api-with-django-rest-framework/)

[Django REST framework: Build an API in 15 minutes](https://blog.logrocket.com/django-rest-framework-build-an-api-in-15-minutes/)

[Use Django REST Framework to build a blog](https://blog.logrocket.com/use-django-rest-framework-to-build-a-blog/)
1
