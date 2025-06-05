# <p align="center"> Python Tips </p>
---

##  First Class Objects
* Assigned to variable
* Stored in a data structure
* Passed as an argument to another function
* Returned from another function

## Python Tips
* Walrus Operator (:=)
  The walrus operator (:=) allows the user to create a variable as well as assign a value to it in the middle of an expression.
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
* Flatten a Nested List
  ```python
  flat_list = [item for sublist in nested_list for item in sublist]
  ````
* Unpacking a list
* Use any() and all() for Logical Operations
* Inline If-Else (Ternary):
* Read a File into a List of Lines
  ```python
  lines = [line.strip() for line in open('file.txt')]
  ```
* Write String to file
  ```python
  with open('file.txt', 'a') as f: f.write('hello world')
  # print(list(open('file.txt'))) >> ['test1\n', 'test2\n', 'test3\n', 'test4\n', 'hello world']
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
