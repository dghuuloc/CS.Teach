``` python
from django.forms import modelformset_factory
from django.shortcuts import render
from myapp.models import Author

def manage_authors(request):
    AuthorFormSet = modelformset_factory(Author, fields=('name','title))

    if request.method == 'POST':
        formset = AuthorFormSet(request.POST, request.FILES)
        if formset.is_valid():
            formset.save()
            # do something
    else:
        formset = AuthorFormSet()
    return render(request, 'manage_authors.html', {'formset':formset})
```


``` python
def mage_books(request, author_id):
    author = Author.objects.get(pk=author_id)
    BookInlineFormSet = inlineformset_factory(Author, Book, fields=('title,))

    if request.method == 'POST':
        formset = BookInlineFormSet(request.POST, request.FILES, instance=author)
        if formset.is_valid():
            formset.save()
            # Do something. Should generally end with a redirect.
            return ......
    else:
        formset = BookInlineFormSet(instance=author)
    return render(request, 'manage_book.html', {'formset':formset})
```
Notice how we pass instance in both the **POST** and **GET** cases.
