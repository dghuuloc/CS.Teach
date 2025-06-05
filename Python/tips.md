# <p align="center"> Python Tips </p>
---

##  First Class Objects
* Assigned to variable
* Stored in a data structure
* Passed as an argument to another function
* Returned from another function

## Python Tips
* **Use f-strings for String Formatting**
  ```python
  name = "Alice"
  age = 25
  print(f"My name is {name} and I am {age} years old.")
  ```
* **Take multiple user inputs in a string**
```python
x, y, z = input("Full name: ").split()
print(f"Name {x} {y} {z}")
```
* **Use Enumerate to Get Index and Value:** Instead of using a counter variable, use enumerate to iterate with an index.
  ```python
  fruits = ["apple", "banana", "cherry"]
  for index, fruit in enumerate(fruits):
      print(index, fruit)
  ```
* **Use `get()` to Handle Missing Dictionary Keys:** Instead of checking if a key exists in a dictionary, use `get()`
  ```python
  my_dict = {"name": "Alice", "age": 25}
  print(my_dict.get("name"))  # Output: Alice
  print(my_dict.get("address", "Not Found"))  # Output: Not Found
  ```
* **Walrus Operator (:=):** The walrus operator (:=) allows the user to create a variable as well as assign a value to it in the middle of an expression.
  ```python
  # Traditional way
  review = 'good'
  n = len(review)
  if n < 10:
    print('Minimum 10 characters required')
  
  # Using Walrus operator
  review = 'good'
  if (n:= len(review)) < 10:
    print('Minimum 10 characters required')
  ```
* **Flatten a Nested List**
  ```python
  main_list = [[1, 2, 3], [4, 5]]
  single_list = [item for sublist in main_list for item in sublist]
  print(single_list) # [1, 2, 3, 4, 5]

  # Another example
  print([item for sublist in [[1,2], [3,4]] for item in sublist])
  ```
* **Unpacking a list**
  ```python
  mylist = [1, 2, 3, 4, 5]
  a, b, *c, d = mylist 
  print(a, b, d) # 1, 2, 5
  print(c) # [3, 4]
  ```
* **Iterable or Value Unpacking**
  ```python
  # Traditional way
  numbers = [1, 2, 3]
  a = numbers[0]
  b = numbers[1]
  c = numbers[2]
  print(a, b, c)
  
  # Using Unpacking
  numbers = [1, 2, 3]
  a, b, c = numbers
  print(a, b, c)
  ```
* **Use any() and all() for Logical Operations:** These functions make it easy to check conditions in a list
  ```python
  nums = [0, 1, 2, 3]
  print(any(nums))  # Output: True (since at least one element is non-zero)
  print(all(nums))  # Output: False (since 0 is in the l
  ```
* **Inline If-Else (Ternary):**
  ```python
  # Traditional way
  result = None
  num = 5
  if num % 2 == 0:
    result = 'Even'
  else:
    result = 'Odd'
  
  # Using Ternary Operator
  num = 5
  result = 'Even' if num % 2 == 0 else 'Odd'
  ```
* **Read a File into a List of Lines:**
  ```python
  lines = [line.strip() for line in open('file.txt')]
  ```
* **Write String to file**
  ```python
  with open('file.txt', 'a') as f: f.write('hello world')
  # print(list(open('file.txt'))) >> ['test1\n', 'test2\n', 'test3\n', 'test4\n', 'hello world']
  ```
* **Map, Filter and Reduce**
  ```python
  # Traditional way
  fruits = ['apple', 'banana', 'cherry']
  upper_cased_fruits = []
  a_contained_fruits = []
  total_length = 0
  
  for fruit in fruits:
    upper_cased_fruits.append(fruit.upper())
  print(upper_cased_fruits)
  
  for fruit in fruits:
    if 'a' in fruit:
      a_contained_fruits.append(fruit)
  print(a_contained_fruits)
  
  for fruit in fruits:
    total_length += len(fruit)
  print(total_length)
  
  # Using Map
  upper_cased_fruits = list(map(lambda x: x.upper(), fruits))
  print(upper_cased_fruits)
  
  # Using Filter
  a_contained_fruits = list(filter(lambda x: 'a' in x, fruits))
  print(a_contained_fruits)
  
  # Using Map
  from functools import reduce
  
  total_length = reduce(lambda acc, fruit: acc + len(fruit), fruits, 0)
  print(total_length)
  ```
* **Zip Function**
  ```python
  # Traditional way
  students = ['Dilli', 'Vikram', 'Rolex', 'Leo']
  grades = [85, 92, 78, 88]
  
  student_grade_pairs = []
  for i in range(len(students)):
      student_grade_pairs.append((students[i], grades[i]))
  
  print(student_grade_pairs)
  
  # Using Zip function
  students = ['Dilli', 'Vikram', 'Rolex', 'Leo']
  grades = [85, 92, 78, 88]
  
  student_grade_pairs = list(zip(students, grades))
  
  print(student_grade_pairs)
  ```
* **Merging lists in one line**
  ```python
  list1= [1, 2, 3]
  list2 = [4, 5]
  list3 = [*list1, *list2]
  print(list3) # 1, 2, 3, 4, 5
  
  # You can also use this
  list1.extend(list2)
  print(list1) # 1, 2, 3, 4, 5
  ```
* **Merging dictionaries in one line**
  ```python
  d1 = { 'A': 1, 'B': 2 }   
  d2 = { 'C': 3, 'D': 4 } 
  d3 = {**d1, **d2}   
  print(d3) # {'A': 1, 'B': 2, 'C': 3, 'D': 4}
  
  # You can also use this
  d1.update(d2)
  print(d1) # {'A': 1, 'B': 2, 'C': 3, 'D': 4}
  ```
* **Remove duplicate elements from a list**
  ```python
  list1 = [4, 4, 5, 5, 6]
  print(list(set(list1))) # [4, 5, 6]
  ```
* **Longest string from a list**
  ```python
  words = ['This', 'is', 'a', 'list', 'of', 'words']
  print(max(words, key=len)) # words
  ```
* **Sort a list**
  ```python
  mylist = [7, 4, 9, 1]

  # sort in ascending order
  print(sorted(mylist)) # [1, 4, 7, 9]
  
  # sort in descending order
  print(sorted(mylist, reverse=True)) # [9, 7, 4, 1]    
  ```
* **Sort a dictionary**
  ```python
  # sort with keys
  d = { 'four': 4, 'eight': 8, 'six': 6 }
  print({key:d[key] for key in sorted(d.keys())}) # {'eight': 8, 'four': 4, 'six': 6}
  
  # sort with values
  d = { 'four': 4, 'eight': 8, 'six': 6 }
  print({key:value for key, value in sorted(d.items(), key=lambda item: item[1])}) # {'four': 4, 'six': 6, 'eight': 8}
  ```
* **Convert a list of strings to integers**
  ```python
  print(list(map(int, ['1', '2', '3']))) # [1, 2, 3]
  ```
* **One-line print:** It can be useful sometimes when you don’t need to use a loop to perform a task.
  ```python
  print(*range(1, 5)) # 1 2 3 4

  # Traditional way
  for x in range(1, 5):  
      print(x, end=' ') # 1 2 3 4
  ```
* **String Join:** The join method is a clean way to concatenate strings from an iterable into a single string.
  ```python
  # Traditional way
  words = ['Python', 'is', 'awesome', 'and', 'powerful']
  
  sentence = ''
  for word in words:
      sentence += word + ' '
  
  print(sentence.strip())  # Strip to remove the trailing space
  
  # Using String join
  words = ['Python', 'is', 'awesome', 'and', 'powerful']
  
  sentence = ' '.join(words)
  print(sentence)
  ```
* **Generate a Random Password:**
  ```python
  import random
  print(''.join(random.choices('abcdefghijklmnopqrstuvwxyz0123456789', k=8)))
  ```

---
## References
* [Python Tips](https://www.youtube.com/watch?v=4s7ueX659DE)
* [Python Memory Management - Memory Allocation And Garbage Collection](https://learnbatta.com/blog/python-memory-allocation-and-garbage-collection-10/)
* [Memory Management in Python](https://www.honeybadger.io/blog/memory-management-in-python/)
* [Memory Management in Python](https://www.scaler.com/topics/memory-management-in-python/)
* [Python reading and writing files](https://learnbatta.com/blog/python-reading-and-writing-files-65/)
* [Python Variable Scopes](https://www.pythontutorial.net/advanced-python/python-variable-scopes/)
* [Memory Management in Python](https://www.scientecheasy.com/2022/09/memory-management-in-python.html/)
* [Python Data & Heap Structures: Heaps of Fun](https://python.plainenglish.io/python-data-heap-structures-heaps-of-fun-8d9a97de8ba4)
* [How to Handle Python Function References](https://labex.io/tutorials/python-how-to-handle-python-function-references-438502)
