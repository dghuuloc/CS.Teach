# <div align="center">The Ultimate Guide to Python </div>
---
## Table of Contents
====================
```
# ======= The TODO List ======= #
- Debugging
- Benchmark
- Logging
- Testing
- with-as statement
- Hint Type
- Docstring
- Zen of Python and PEP-8
- Libraries: Numpy, Pandas, Oracle,...
- String Prefixes in Python: What are f-strings and r-strings in Python
- underscores (single and double) --> reference from: https://dbader.org/blog/meaning-of-underscores-in-python
- OOP paradigm
- variable scope and namespace
- Special methods, 
- Ternary operators
- Python Keywords
- regular expressions (import re)
- Built-in Modules (os, sys, re, json )

########### Python as Scripting ##########
- Python Shell Scripting	--> https://medium.com/@charlesmwaniki/python-linux-shell-scripting-best-practices-92cb04856aa7
- Python Automation
- Python get USERNAME, USERPROFILE, LOCALAPPDATA, APPDATA
- Use Python with Cx_Oracle and sqlscheme
- Use Python with csv, excel, sql-script, json,...

## Advanced concepts
- Comprehension
- Lambda
- Decorators
- Files Handling
- Map, Reduce and Filter Function
- Inner Function

# ------------------------------------------------
# Try
import logging
import timeit
import time
import datetime
from logutils.queue import QueueListener, QueueHandler
import Queue
import threading
```

## Python Install and Config
### Setup py-env-paths on Windows
```
C:\Users\<user-name>\AppData\Local\Programs\Python\Python313
C:\Users\<user-name>\AppData\Local\Programs\Python\Python313\Scripts

# Setup for py and pyw command (optional)
C:\Users\<user-name>\AppData\Local\Programs\Python\Launcher
```

## Python Code Hierarchy
### 1. Packages
#### Built-in Packages: `os`, `sys`,`datatime`, `math`, `random`, `json`, `re`, `collections`, `csv`, `urllib`
### 2. Modules
### 3. Classes
### 4. Functions
#### Built-in Functions
### 5. Statements
Statements are individual lines of code that perform actions. They can be simple expressions, assignments, or control flow structures like loops and conditionals.
```python
if temperature > 90:
  print("It is hot outside!!")

for i in range(5):
  print(i)
```
### 6. Expressions
Expressions are combinations of values, variables, and operators that can be evaluated to produce a result. They can be as simple as a single value or as complex as a mathematical formula.
```python
num1 = 5
num2 = num1 + 3
avg = (num1 + num2)/2
```
### 7. Variables
At the lowest level of the Python code hierarchy are variables. Variables are named storage locations that hold data. They can store various types of data, including numbers, strings, lists, and even complex objects.
```python
name = "Jphn"
age = 25
is_student = True
```

---
## Entry point
``` python
def main(number: int):
    print("Hello, World!")
if __name__ == "__main__":
    main()
```

## Data Types
* **Text Type:** `str`
* **Numeric Types:** `int`, `float`, `complex`
* **Sequence Types:** `list`, `tuple`, `range`
* **Mapping Types:** `dict`
* **Set Types:** `set`, `frozenset`
* **Boolean Types:** `bool`
* **Binary Types:** `bytes`, `bytearray`, `memoryview`
* **None Type:** `NoneType`

---
## Input and Output
* The syntax of output in Python:
```
print ( <variable name or string> , sep = <separator value> , end = <end value >)
```
* In Python, you can use `input()` function to take input from user.
``` python 
inputString = input('Enter a sentence:')
print('Te inputted string is:', inputString)
```

## Python operators
Python divides the operators in the following groups:
* **Arithmetic operators**
* **Assignment operators**
* **Comparison operators**
* **Logical operators**
* **Identity operators**
* **Membership operators**
* **Bitwise operators**

### Floor devision operators (`//`)
In Python, perform **floor devision** (also sometimes known as **integer devision**) using the `//` operator. This operator will divide the first argument by the second and round the result down to the nearest whole number, making it equivalent to the `math.floor()` function.
```python
import math
a:int = 15
b:int = 4

print(15//4) #result: 3
print(math.floor(15/4)) #result: 3
```
> [!NOTE]
> The result of regular division (`/`) **is always a float**, whereas if one of the operands is a float in floor division (`//`), then **the output will be a float**.

### Modulos
A **dividend** is the number or value that is divided. A **divisor** is the value that divides the other number. A **quotient** is an answer we get when one value is divided by another value. The **remainder** is the number that is left when a dividend is not completely divisible by the divisor.
```
Dividend = Divisor x Quotient + Remainder
or
Remainder = Dividend — Divisor x Quotient
```
For positive integers a and b, a % b is the remainder when a is divided by b. The result is always in the range [0, b). However, when dealing with negative numbers, the modulo operation in Python ensures that the result is still in this range, but the sign might differ from what one expects. Python uses floored division to calculate modulus and the formula for the modulo operation (%) can be expressed as follows:
```
a % b = a - (a // b) * b
```

---
## Numbers and Maths

---
## Python String
### What Are String Prefixes?
String prefixes are characters placed before string literals in Python that change how the string is interpreted. Python allows several prefixes, with the most widely used being f, for string interpolation, and r, for raw strings that treat backslashes as literal characters. The most commonly used string prefixes in Python include:
* **f:** Formatted string literal (f-string)
* **r:** Raw string
* **b:** Byte string
* **fr:** Combined raw and formatted string literal
#### When to Use Each String Prefix
* Use Formatted String Literals `f"string with {expression}"` when you need dynamic content, like embedding variables or expressions into strings.
* Use Raw String Literals `r"string"` when working with regular expressions, file paths, or any string with backslashes.
* Use Byte Strings `b"byte_string"` when handling binary data, such as reading or writing to binary files or communicating over a network.

### Write a long string on multiple lines
* Triple Quotes
* Backslash
* Parentheses
* F-Strings
* join() Method
---
## Python collection
### Lists
A list is created by placing all the items(elements) inside a square bracket `[]` seperated by commas. You can also use `list()` function to create lists.
```python
# empty list
new_list = []
# another way
another_list = list()
```
### Tuple
A tuple is created by placing all the items (elements) inside parentheses `()`, separated by commas. You can also use `tuple()` function to create tuples.
```python
# empty list
new_list = ()
# another way
another_list = tuple()
```
### Set
Sets represent the mathematical notion of sets. Sets are mutable, iterable and don’t have any duplicate value. Python provides us, along with ‘set’ datatype, the mathematical functions associated with the sets such as **intersection**, **union**, **difference**, etc.
```python
# empty set
new_set = set()
# another way
another_set = set()
```
### Dictionary
In Python, a Dictionary can be created by placing a sequence of elements within curly `{}` braces, separated by ‘comma’. Dictionary holds a pair of values, one being the Key and the other corresponding pair element being its **Key-value**. Values in a dictionary can be of any datatype and can be duplicated, whereas keys can’t be repeated and must be immutable.
``` python
# empty dictionary
my_dict = {}
```
#### Dictionary Methods
* `items()` method returns a view object that displays a _list of dictionary's (key, value) tuple pairs_. The syntax of items() method is:
```python
dictionary.items()
```
**For example:**
```python
my_dict = {"a": 1, "b": 2, "c": 3}

# Iterate through key-value pairs using .items()
for key, value in my_dict.items():
    print(f"Key: {key}, Value: {value}")

# Access key-value pairs as tuples
items_view = my_dict.items()
print(items_view)  # Output: dict_items([('a', 1), ('b', 2), ('c', 3)])
```
* `keys()` method extracts the keys of the dictionary and returns the list of keys as a view object.
```python
dictionary.keys()
```
* `values()` method returns a view object that displays a list of all the values in the dictionary. The syntax of values() is:
```python
dictionary.values()
```
* `get(key)`method retrieves the value associated with the key, but returns `None` if the key donesn't exist. The `get()` method provides a safer alternative to square brackets, avoiding `KeyError` exceptions.
```python
my_dict = {"name": "John", "age": 30}
print(my_dict["name"]) # Output: John
my_dict["city"] = "New York"
print(my_dict.get("age")) # Output: 30
print(my_dict.get("country", "USA")) # Output: USA
```

---
## Python Comprehensions
### List Comprehension:
**Definition:** A list comprehension creates a new list by applying an expression to each item in an iterable.
```python
# Syntax:
[expression for item in iterable if condition]

# Trick: Use list comprehension to flatten nested lists.
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flat = [num for row in matrix for num in row]
# Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```
### Dictionary Comprehension:
**Definition:** A dictionary comprehension creates a new dictionary by applying an expression to each key-value pair in an iterable.
```python
# Syntax:
{key_expression: value_expression for item in iterable if condition}

# Trick: Inverting keys and values in a dictionary.
original_dict = {'a': 1, 'b': 2, 'c': 3}
inverted_dict = {v: k for k, v in original_dict.items()}
# Output: {1: 'a', 2: 'b', 3: 'c'}
```
### Set Comprehension:
**Definition:** A set comprehension creates a new set by applying an expression to each item in an iterable. Since sets automatically handle duplicates, this is a great way to ensure unique items.
```python
# Syntax:
{expression for item in iterable if condition}

# Trick: Extract unique vowels from a string.
vowels = {char for char in 'pythoncomprehension' if char in 'aeiou'}
# Output: {'e', 'o', 'i'}
```
### Tuple Comprehension (Generator Expression):
**Definition:** _While Python does not have tuple comprehensions_, you can create a tuple by using a **generator expression**, which is similar in syntax to a comprehension but uses parentheses instead of square brackets. This generates items one at a time and is more memory efficient.
```python
# Syntax:
(expression for item in iterable if condition)

# Trick: Generate a sequence of tuples.
pairs = ((x, x**2) for x in range(5))
pairs_tuple = tuple(pairs)
# Output: ((0, 0), (1, 1), (2, 4), (3, 9), (4, 16))
```

### `if-else` nested in Comprehension
```python
# Syntax:
 [result if condition else alternative_result for item in iterable]
```

---
## Control Flow
### if...elif...else Statement
The `if...elif...else` statement is used if you want perform different action(run different conde) on different condittion. For example:
``` python
num = -1 
if num > 0:
  print("Positive number")
elif num == 0:
  print("Zero")
else:
  print("Negative number")
```

### Match Statement
```
match expression:
    case pattern1:
        # Execute if pattern1 fits
    case pattern2:
        # Execute if pattern2 fits
    case _:
        # Execute if no pattern fits (default case)
```

## while loop
Like most programming languages, `while` loop is used to iterate over a block of code as long as the test expression (condition) is `True`. For example:
``` python 
n = 100
# initialize sum and counter
sum = 0
i = 1

while i <= n:
  sum = sum + i
  i = i + 1   # update counter
print("The sum is:", sum)
```
In Python, while loop can have optional `else` block that is executed if the condition in the `while` loop evaluates to `False`. However, if the loop is terminated with `break` statement, Python interpreter ignores the `else` block.

## Emulate Do-While Loops
The most common technique to emulate a `do-while` loop in Python is to use an infinite `while` loop with a `break` statement wrapped in an `if` statement that checks a given condition and breaks the iteration if that condition becomes true:
```
while True:
    # Do some processing...
    # Update the condition...
    if condition:
        break
```

--- 
## for loop
In Python, `for` loop is used to iterate over a sequence (list, tuple. string) or other iterable objects. Iterating over a sequence is caled traversal. For example:
``` python
numbers = [6, 5, 3, 8, 4, 2]
sum = 0
# iterate over the list
for val in numbers:
  sum = sum + val
print("the sum is", sum)  # Output: The sum is 28
```
Notice the use of `in` operator in the above example. the `in` operator eturns `True` if value/variable is found in the sequence.

In Python, `for` loop can have optional `else` block. The else part is executed if the items in the sequence used in `for` loop exhausts. However, if the loop i terminated with `break` statement, Python interpreter ignores the `else` block.

## break and continue Statement
The `break` statement terminates the loop containing it. Control of the program flows to the statement immediately after the body of the loop.
The `continue` statement is used to skip the rest of the code inside loop for the current iteration only. Loop does not terminate but continues on the with the next iteration.

For example:
``` python
for val in "string":
  if val == "r":
    continue
  if val == "i":
    break
  print(val)

print("The end")
```
## pass Statement
Suppose, you have a loop or a function that is not implemented yet, but want to implement it in the future. They cannot have an empty body. The interpreter would complain. So, you use the `pass` statement to construct a body that does nothing.
``` python
sequence = {'p', 'a', 's', 's'}
for val in sequence:
    pass
```

---
## Function
### Simple Function
A function is a group of related statements that perform a specific task. You use `def` keyword to create functions in Python 
``` python
def add_number(a, b):
  sum = a + b
  print(sum)
add_numbers(4, 5)
```

You can also return value from a function using `return` statement.
``` python
def add_numbers(a, b):
  sum = a + b
  return sum
result = add_numbers(4, 5)
print(result)
```

### Built-in functions in Python
* `print()`
* `input()`
* `len()`
* `range()`
* `enumerate()`
* `abs()`
* `any()`
* `all()`
* `ascii()`
* `bin()`
* `bool()`
* `bytes()`
* `bytearray()`: Returns a new array of bytes.
* `bytes()`: Returns a new "bytes" object.
* `chr()`: Returns the string representing a character whose Unicode code point is the integer.
* `slice()` returns a slice object. A slice object is used to specify how to slice a sequence (**list, tuple, string or range** etc.) .
* `join()` method takes all items in an iterable and joins them into one string

#### `range()` method returns an immutable sequence of numbers between the given start integer to the stop integer.
``` python
print(range(0, 10)) #Output: range(0, 10)
```
* The output is an iterable and you can convert it to list, tuple, set and so on. 
``` python 
numbers = range(1, 6)

print(list(numbers)) # Output: [1, 2, 3, 4, 5]
print(tuple(numbers)) # Output: (1, 2, 3, 4, 5)
print(set(numbers)) # Output: {1, 2, 3, 4, 5}
# Output: {1: 99, 2: 99, 3: 99, 4: 99, 5: 99} 
print(dict.fromkeys(numbers, 99))
```
* We have omitted optional `step` parameter for `range()` in above examples. When omitted, `step` defaults to 1. Let's try few examples with `step` parameter.
``` python
# Equivalent to: numbers = range(1, 6)
numbers1 = range(1, 6 , 1)
print(list(numbers1)) # Output: [1, 2, 3, 4, 5]

numbers2 = range(1, 6, 2)
print(list(numbers2)) # Output: [1, 3, 5]

numbers3 = range(5, 0, -1)
print(list(numbers3)) # Output: [5, 4, 3, 2, 1]
```
#### Python's built-in functions to convert numbers between decimal, octal, and hexadecimal representation.
* `bin()`: This function takes an integer as an argument and returns its binary representation as a string, prefixed with `0b`.
```python
binary_representation = bin(10)  # Output: '0b1010'
```
* `oct()`: This function takes an integer as an argument and returns its octal representation as a string, prefixed with `0o`.
```python
octal_representation = oct(10)  # Output: '0o12'
```
* `hex()`: This function takes an integer as an argument and returns its hexadecimal representation as a string, prefixed with `0x`.
```python
hexadecimal_representation = hex(10)  # Output: '0xa'
```
* `int()`: function can convert a string representation of a number in a specific base to its decimal equivalent. The base must be specified as the second argument.
```python
decimal_from_binary = int('1010', 2)  # Output: 10
decimal_from_octal = int('12', 8)  # Output: 10
decimal_from_hexadecimal = int('a', 16)  # Output: 10
```

```python
# Decimal to octal
decimal_number = 255
octal_string = oct(decimal_number)
print(f"Octal of {decimal_number}: {octal_string}") # Output: Octal of 255: 0o377

# Decimal to hexadecimal
hexadecimal_string = hex(decimal_number)
print(f"Hexadecimal of {decimal_number}: {hexadecimal_string}") # Output: Hexadecimal of 255: 0xff

# Octal to decimal
octal_string = '0o377'
decimal_number = int(octal_string, 8)
print(f"Decimal of {octal_string}: {decimal_number}") # Output: Decimal of 0o377: 255

# Hexadecimal to decimal
hexadecimal_string = '0xff'
decimal_number = int(hexadecimal_string, 16)
print(f"Decimal of {hexadecimal_string}: {decimal_number}") # Output: Decimal of 0xff: 255
```
> [!NOTE]
> * The `bin()`, `oct()`, and `hex()` functions are used to convert from decimal to binary, octal, and hexadecimal, respectively.
> * The `int()` function is used to convert from binary, octal, or hexadecimal to decimal.
> * The prefixes `0b`, `0o` and `0x` are included in the output of `bin()`, `oct()` and `hex()` respectively. If you need to remove these prefixes, use string slicing `[2:]` or the `format()` function.
> ```python
>   binary_string = bin(10)[2:]  # Output: '1010'
>   octal_string = oct(10)[2:]  # Output: '12'
>   hex_string = hex(10)[2:]  # Output: 'a'
>   formatted_binary = format(10, 'b') # Output: '1010'
>   formatted_octal = format(10, 'o') # Output: '12'
>   formatted_hex = format(10, 'x') # Output: 'a'
>   ```

---
### Lambda Function
In python, you can define functions without a name. Thes functions are lambda or anonymous function. To create a lambda function, `lambda` keyword is used.
``` python
square = lambda x: x**2
print(square(5))
```
We use lambda functions when we require a nameless function for a short period of time. Lambda functions are used along with built-in functions like `filter()`, `map()` etc.

---
## Modules
Modules refer to a file containing Python statements and definitions.

A file containing Python code, for e.g.: `example.py`, is called a module and its module name would be `example`.

Let us create it and save it as `example.py`.
``` python
# Python Module example
def add(a, b):
   return a + b
```

To use this module, we use `import` keyword.
``` python
# importing example module
import example 
# accessing the function inside the module using . operator
example.add(4, 5.5) 
```
Python has a ton of standard modules readily available for use.

---
## Exception Handling
```
try:
    # code that may cause exception
except:
    # code to run when exception occurs
finally:
    # code always executed no matter whether there is an exception or not    
```
### Defining Custom Exceptions
```
class CustomError(Exception):
    ...
    pass
try:
   ...
except CustomError:
    ...
```

For instance,
```python
try:
  print("Try to print hello World!")
except:
  print("Something went wrong")
else:
  print("No Error!")
finally:
  print("The 'try except' is finished") 
```

---
## The `with` Statement and Context Managers
The `with` statement is a handy way to manage resources like files, sockets, and database connections. It ensures that the resource is properly closed when you’re done with it, even if an error occurs.

---
## Python Object-Oriented-Programming
Everything in Python is an Object. An Object has a state and behaviors. To create an object, you can define a class first. And then, from the class, you can create one or more objects. The objects are instances of a class.

### Define a class
To define a class, you use the `class` keyword followed by the class name. This is a general syntax to define a class:
``` python
class <ClassName>:
  
  # class attribute
  <class_attribute_name> = <value>	# Here is class variable
  
  # instance attribute
  def __init__(self, <param1>, <param2>, ...):
    self.<attr1> = <<param1>		# Here is instance variable
    self.<attr2> = <param2>
    .
    .
    
  # As many attributes as method
  def <method_name>(self, <param1>, <param2>, ...):	# Here is instance method
   	<code>
	
  # Another instance method
  
  ## String method
  def __str__(self):
    return f"{self.<attr>} ...is something!"
  ...

```

To create an object from class, we use the class name followed by parentheses `()`, like calling a function:
``` python
<object_name> = <class_name>(<argument_list>)
```
In this example, the `person` is an instance of the `Person` class.

### Define constructor of class

### Define instance attributes
Python is dynamic. It means that you can add an attribute to an instance of a class dynamically at runtime.

For example, the following adds the `name` attribute to the `person` object:
``` python
person.name = 'John'
```
However, if you create another `Person` object, the new object won’t have the `name` attribute.

To define and initialize an attribute for all instances of a class, you use the `__init__` method. The following defines the `Person` class with two instance attributes `name` and `age`:
``` python
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age
```
When you create a `Person` object, Python automatically calls the `__init__` method to initialize the instance attributes. In the `__init__` method, the `self` is the instance of the `Person` class.

The following creates a `Person` object named `person`:
``` python
person = Person('John', 25)
```
The `person` object now has the `name` and `age` attributes. To access an instance attribute, you use the dot notation. For example, the following returns the value of the name attribute of the `person` object:

``` python 
person.name
```
## Define instance methods
The following adds an instance method called `greet()` to the `Person` class:
``` python 
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age
  
  def greet(self):
    return f'Hi, it's {self.name}.'
```
To call an instance method, you also use the dot notation. For example:

``` python 
person = Person('John', 25)
print(person.greet())
```
## Define class attributes
Unlike instance attributes, class attributes are shared by all instances of the class. They are helpful if you want to define class constants or variables that keep track of the number of instances of a class.

For example, the following defines the `counter` class attribute in the `Person` class:
``` python 
class Person:
  counter = 0
  
  def __init__(self, name, age):
    self.name = name
    self.age = age
    
  def greet(self):
    return f'Hi, it's {self.name}.'
```
You can access the `counter` attribute from the `Person` class:
``` python 
Person.counter
```

Or from any instances of the `Person` class:
``` python 
person = Person('John', 25)
person.counter
```

To make the `counter` variable more useful, you can increase its value by one once an object is created. To do it, you increase the `counter` class attribute in the `__init__` method:
``` python
class Person:
    counter = 0

    def __init__(self, name, age):
        self.name = name
        self.age = age
        Person.counter += 1

    def greet(self):
        return f"Hi, it's {self.name}."
```

The following creates two instances of the `Person` class and shows the value of the `counter`:
``` python
p1 = Person('John', 25)
p2 = Person('Jane', 22)
print(Person.counter)
```

## Define class method
Like a class attribute, a class method is shared by all instances of the class. The first argument of a class method is the class itself. By convention, its name is `cls`. Python automatically passes this argument to the class method. Also, you use the `@classmethod` decorator to decorate a class method.

The following example defines a class method that returns an anonymous `Person` object:
``` python
class Person:
    counter = 0

    def __init__(self, name, age):
        self.name = name
        self.age = age
        Person.counter += 1

    def greet(self):
        return f"Hi, it's {self.name}."

    @classmethod
    def create_anonymous(cls):
        return Person('Anonymous', 22)
```

The following shows how to call the `create_anonymous()` class method:
``` python
anonymous = Person.create_anonymous()
print(anonymous.name)  # Anonymous
```

## Define static method
A static method is not bound to a class or any instances of the class. In Python, you use static methods to group logically related functions in a class. To define a static method, you use the `@staticmethod` decorator.

For example, the following defines a class `TemperatureConverter` that has two static methods that convert from celsius to Fahrenheit and vice versa:
``` python
class TemperatureConverter:
    @staticmethod
    def celsius_to_fahrenheit(c):
        return 9 * c / 5 + 32

    @staticmethod
    def fahrenheit_to_celsius(f):
        return 5 * (f - 32) / 9
```

To call a static method, you use the `ClassName.static_method_name()` syntax. For example:
``` python
f = TemperatureConverter.celsius_to_fahrenheit(30)
print(f)  # 86
```
Notice that Python doesn’t implicitly pass an instance (`self`) as well as class (`cls`) as the first argument of a static method.

## Single inheritance
A class can reuse another class by inheriting it. When a child class inherits from a parent class, the child class can access the attributes and methods of the parent class.

For example, you can define an `Employee` class that inherits from the `Person` class:
``` python
class Employee(Person):
    def __init__(self, name, age, job_title):
        super().__init__(name, age)
        self.job_title = job_title
    def greet(self):
        return super().greet() + f" I'm a {self.job_title}."
```
Inside the `__init__` method of the `Employee` class calls the `__init__` method of the `Person` class to initialize the `name` and `age` attributes. The `super()` allows a child class to access a method of the parent class.

The `Employee` class extends the `Person` class by adding one more attribute called `job_title`.

The `greet()` method in the `Employee` is also called the `greet()` method of the `Person` class. In other words, it delegates to a method of the parent class.

The following creates a new instance of the `Employee` class and call the `greet()` method:
``` python
employee = Employee('John', 25, 'Python Developer')
print(employee.greet())
```

## References
* [The Ultimate Guide to Python: How to Go From Beginner to Pro](https://www.freecodecamp.org/news/the-ultimate-guide-to-python-from-beginner-to-intermediate-to-pro/)
* [Exploring Python Built-In Functions: An Easy Guide](https://medium.com/@roscoe.kerby/exploring-python-built-in-functions-an-easy-guide-d1a93fe6c3a5)
* [How to define Python special methods](https://labex.io/tutorials/python-how-to-define-python-special-methods-419764)
* [String Prefixes in Python: What are f-strings and r-strings in Python](https://medium.com/@suryasekhar/string-prefixes-in-python-what-are-f-strings-and-r-strings-in-python-ca759810ebfa)
* [Top 10 Advance Python Concepts That You Must Know](https://www.geeksforgeeks.org/top-10-advance-python-concepts-that-you-must-know/)
* [100 Advanced Python Concepts Every Developer Should Know](https://blog.acethecloud.com/100-advanced-python-concepts-every-developer-should-know-f874c2616f89)
* [Mastering Advanced OOP Concepts in Python: Theory Behind OOP](https://blog.devgenius.io/mastering-advanced-oop-concepts-in-python-theory-behind-oop-c9e87fb1697b)
* [Advanced Python 3 Crash Course](https://github.com/methylDragon/coding-notes/blob/master/Python%203/04%20Python%203%20-%20Advanced%20Concepts.md)
* [10 Advanced Concepts In Python](https://medium.com/@alensabu12xtz/10-advanced-concepts-in-python-553ee3df9127)
* [Advanced Python Topics Tutorial](https://www.geeksforgeeks.org/advanced-python-tutorials/)
* [String Prefixes in Python: What are f-strings and r-strings in Python](https://medium.com/@suryasekhar/string-prefixes-in-python-what-are-f-strings-and-r-strings-in-python-ca759810ebfa)
* [5 Essential Built-in Modules for Every Python Developer](https://medium.com/pythons-gurus/5-essential-built-in-modules-for-every-python-developer-c5b568cc9897)
* [Python Switch Case Statement: A Beginner's Guide](https://www.datacamp.com/tutorial/python-switch-case?utm_source=google&utm_medium=paid_search&utm_campaignid=19589720824&utm_adgroupid=157156376311&utm_device=c&utm_keyword=&utm_matchtype=&utm_network=g&utm_adpostion=&utm_creative=733936254863&utm_targetid=aud-1700705940199:dsa-2218886984100&utm_loc_interest_ms=&utm_loc_physical_ms=9198864&utm_content=ps-other~apac-en~dsa~tofu~tutorial-python&accountid=9624585688&utm_campaign=230119_1-ps-other~dsa~tofu_2-b2c_3-apac_4-prc_5-na_6-na_7-le_8-pdsh-go_9-nb-e_10-na_11-na&gad_source=1&gclid=CjwKCAjw8IfABhBXEiwAxRHlsOaXh6LekJUjXkFt5oBoy-dxV1LcxE6Mf4p2UkoKT6uC2QppXKO1ghoC9zcQAvD_BwE)
* [An Introduction to the With Statement in Python](https://builtin.com/software-engineering-perspectives/what-is-with-statement-python)
* [Python Cheat Sheet](https://indico.global/event/6155/attachments/25456/43759/beginners_python_cheat_sheet_pcc_all.pdf)
* [The curious case of Modulo operator (%) and negative numbers in Python](https://medium.com/@anay.m.tripathi/the-curious-case-of-modulo-operator-and-negative-numbers-in-python-57e243691b40)
* [Learn X in Y minutes](https://learnxinyminutes.com/python/)
* [Python Double Slash (//) Operator: Floor Division](https://www.learndatasci.com/solutions/python-double-slash-operator-floor-division/#:~:text=In%20Python%2C%20we%20can%20perform,floor()%20function.)
* [Python Exception Handling](https://medium.com/@wvrushali27/python-exception-handling-b65de80eaa62)
* [Mastering Exception Handling in Python: From Basics to Advanced Techniques](https://medium.com/@officialyrohanrokade/mastering-exception-handling-in-python-from-basics-to-advanced-techniques-a962ad070aaa)
* [Understanding Try-Except in Python and Common Exceptions](https://medium.com/@varmabharath2/error-handling-with-try-and-except-in-python-8a29935bc3b9)
* [Error Handling with “try and except” in Python](https://medium.com/@varmabharath2/error-handling-with-try-and-except-in-python-8a29935bc3b9)
* [Exception Handling in Python: Try, Except, Else, Finally, and Custom Exceptions](https://medium.com/@eastlight.d.90/exception-handling-in-python-try-except-else-finally-and-custom-exceptions-4a19eb7bb6a7)
* [Raising and Catching Exceptions in Python: A Beginner’s Guide](https://medium.com/@ryk.kiel/raising-and-catching-exceptions-in-python-a-beginners-guide-3f9b83e1c278)
* [Beyond If/Else: Advanced Python Control Flow](https://python.plainenglish.io/beyond-if-else-advanced-python-control-flow-026d38536248)
* [Excel File Writing Showdown: Pandas, XlsxWriter, and Openpyxl](https://medium.com/@badr.t/excel-file-writing-showdown-pandas-xlsxwriter-and-openpyxl-29ff5bcb4fcd)
* [Openpyxl vs XlsxWriter: The Ultimate Showdown for Excel Automation](https://hive.blog/python/@geekgirl/openpyxl-vs-xlsxwriter-the-ultimate-showdown-for-excel-automation)
* [Packages in Python](https://www.scientecheasy.com/2023/07/packages-in-python.html/)
* [Python Code Hierarchy](https://swethag04.medium.com/softwarepython-code-hierarchy-0a80093344be)
* [Python Built in Functions](https://www.w3schools.com/python/python_ref_functions.asp)
* [Python Built in Functions](https://www.geeksforgeeks.org/python-built-in-functions/)
* [Built-in Functions](https://docs.python.org/3/library/functions.html)
* [Built-in Functions](https://www.codecademy.com/resources/docs/python/built-in-functions/bin)
* [Python Built-in Functions: All List, Advantages, Examples](https://www.wscubetech.com/resources/python/built-in-function)
* [Python Built-In Functions](https://www.docs.inductiveautomation.com/docs/8.1/platform/scripting/python-scripting/built-in-functions)
* [Code Smarter, Not Harder: 10 Python Efficiency Hacks](https://medium.com/@huzaifazahoor654/code-smarter-not-harder-10-python-efficiency-hacks-fff7e0da53e0)
* [Automate Your Daily Workflow with These 19 Useful Python Scripts](https://www.index.dev/blog/python-automation-scripts)
* [Top 25 Python Scripts To Automate Your Daily Tasks](https://medium.com/@haroldfinch01/top-25-python-scripts-to-automate-your-daily-tasks-817330847aa1)
* [Top 10 Tasks to Automate with Python](https://www.activestate.com/blog/top-10-tasks-to-automate-with-python/)
* [How I Automated My Life: Practical Python Scripts for Everyday Tasks](https://python.plainenglish.io/how-i-automated-my-life-practical-python-scripts-for-everyday-tasks-aca2df7e9e9b)
* [Python Automation Scripts You Should Know](https://www.freecodecamp.org/news/python-automation-scripts/)
* [Beginner’s Guide To Python Automation Scripts (With Code Examples)](https://zerotomastery.io/blog/python-automation-scripts-beginners-guide/)
* [Python Automation Scripts](https://github.com/DhanushNehru/Python-Scripts)
* [Python automation: 9 scripts to automate critical workflows](https://zapier.com/blog/python-automation/)
* [Understanding Python’s Most Common Built-in Functions](https://medium.com/@AlexanderObregon/understanding-pythons-most-common-built-in-functions-f535b83ea397)
* [Top 15 Python Built-in Functions](https://www.analyticsvidhya.com/blog/2021/07/15-python-built-in-functions-which-you-should-know-while-learning-data-science/)
* [Python List Comprehension Using If-Else](https://www.geeksforgeeks.org/python-list-comprehension-using-if-else/)
* [if/else in a list comprehension](https://sparkbyexamples.com/python/if-else-in-a-list-comprehension/)
* [Write a Long String on Multiple Lines in Python](https://blog.finxter.com/write-a-long-string-on-multiple-lines-in-python/)
