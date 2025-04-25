``` python
# dashboard/models.py

from django.db import models
from djangocontrib.auth.models import User

# Create your models here
class Note(models.Model):
    user = models.ForeignKey(User, on_delete = models.CASECADE)
    title = models.CharField(max_length = 200)
    description = models.TextField()

    def __str__(self):
```

``` python
# dashboard/forms.py

from django import forms
from dashboard.models import Note

# Create your forms here
class NotesForm(forms.ModelForm):
    class Meta:
        model = Note
        fields = ['titel', 'description']
```


``` python
# dashboard/views.py

from django.shortcuts import redirect, render
from dashboard.forms import NotesForm
from django.contrib import messages

# Create your views here.

def notes(request):
    if request.method == "POST":
        form = NotesForm(request.POST)
        if form.is_valid():
            notes = Notes(user=request.user,
            title = request.POST['title'],
            description = request.POST['description'])
            notes.save()
        messages.success(request, f'Notes addes from {request.user.username} successfully!!')
    else:
        form = NotesForm()
    notes = Notes.objects.filter(user=request.user)
    context = {'notes':notes, 'form':form}
    return render(request, 'dashbord/notes.html', context)
```

``` python
# forms.py
# ...
class MyForm(forms.ModelForm):

     class Meta:
     model = MyModel

# views.py  

def my_view(request, id): 
    instance = MyModel.objects.get(id=id)
    form = MyForm(request.POST or None, instance=instance)
    if form.is_valid():
          form.save()
          return redirect('next_view')
return direct_to_template(request, 'my_template.html', {'form': form})  
```

``` python
from django.shortcuts import render, HttpResponseRedirect
from .forms import StudentRegistration
from .models import User
# Create your views here.

#adding and retrieving data
def add_show(request):
    if request.method == 'POST':
        fm = StudentRegistration(request.POST)
        if fm.is_valid():
            nm = fm.cleaned_data['name']
            em = fm.cleaned_data['email']
            pw = fm.cleaned_data['password']
            reg = User(name=nm, email=em, password=pw)
            reg.save()
            fm = StudentRegistration()
    else:
        fm = StudentRegistration()
    stud = User.objects.all()
    return render(request, 'enroll/add.html', {'form':fm, 'stu':stud})

#edit and update function
def update_data(request,id):
    if request.method == 'POST':
        pi = User.objects.get(pk=id)
        fm = StudentRegistration(request.POST, instance=pi)
        if fm.is_valid():
            fm.save()
    else:
        pi = User.objects.get(pk=id)
        fm = StudentRegistration(instance=pi)

    return render(request,'enroll/update.html', {'form':fm})

#delete function

def delete_data(request,id):
    if request.method == 'POST':
        pi = User.objects.get(pk=id)
        pi.delete()
        return HttpResponseRedirect('/')
```
