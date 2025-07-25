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
- Hint Type
- Docstring
- Zen of Python and PEP-8
- underscores (single and double) --> reference from: https://dbader.org/blog/meaning-of-underscores-in-python
- Special methods, 
- Ternary operators
- Python Keywords
- regular expressions (import re)

########### Python as Scripting ##########
- Python Shell Scripting	--> https://medium.com/@charlesmwaniki/python-linux-shell-scripting-best-practices-92cb04856aa7
- Python Automation
- Python get USERNAME, USERPROFILE, LOCALAPPDATA, APPDATA
- Use Python with Cx_Oracle and sqlscheme
- Use Python with csv, excel, sql-script, json,...

## Advanced concepts
- Decorators
- Files Handling
- Map, Reduce and Filter Function
- Inner Function

## Python number
- BitManipulation
- Number theory's Hex, Dec,...

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

---
## Overview of Python Keywords
There are 39 keywords, which include **35 standard keywords** and **4 soft keywords**. The addition of the `case`, `match`, and `type` keywords in recent versions highlights the evolving nature of Python. Let's dive into each keyword.

* **Standard Keywords:** `False`, `None`, `True`, `and`, `as`, `assert`, `async`, `await`, `break`, `class`, `continue`, `def`, `del`, `elif`, `else`, `except`, `finally`, `for`, `from`, `global`, `if`, `import`, `in`, `is`, `lambda`, `nonlocal`, `not`, `or`, `pass`, `raise`, `return`, `try`, `while`, `with`, `yield`

* **Soft Keywords:** `_` (underscore), `match`, `case`, `type`

## Python Namespaces
A **Namespace** is a collection of names along with the information of the object it refers to. It maps names to the objects.

When you access this variable later in your program Python will refer to the namespace to retrieve it. There are multiple levels to this lookup process. The order goes with ```LEGB Scoping Rule =  Local Scope -> Enclosing Scopes (Nonlocal) -> Module Scope (Global) -> Builtin Scope -> NameError```

When the Python interpreter starts, it loads builtins.py and makes it universally available. Here are a few that you are probably familiar with: [`sorted`, `staticmethod`, `str`, `sum`, `super`, `tuple`, `type`, `vars`, `zip`]. Run the following code to see the full list.
```python 
import builtins
print(dir(builtins))
```
### Python Re-scoping Statements
#### Python global Statement
In any namespace, declaring a variable with the `global` statement will store and retrieve that variable immediately **from the module scope**.

#### Python nonlocal Statement
Where the `global` statement serves to declare a variable within the module scope, the `nonlocal` statement declares that the variable is **within the scope of the next enclosing namespace**.

#### Exploring the Namespace's Information
The built-in functions globals() and locals() returns the global and local symbols table respectively. Python interpreter maintains a data structure containing information about each identifier appearing in the program's source code. This information is about the type, value, scope level, and location of an identifier (also called symbol).

## Python Code Hierarchy
### 1. Packages
#### Built-in Packages: `os`, `sys`,`datatime`, `math`, `random`, `json`, `re`, `collections`, `csv`, `urllib`
### 2. Modules
* **Importing Modules:**
  * **import module_name:** Imports the entire module. You access its contents using module_name.item.
  * **from module_name import item:** Imports specific items from a module directly into the current namespace. You can use them without the module prefix.
  * **from module_name import item as alias:** Imports an item and assigns it an alias, allowing you to use a shorter name.
  * **from module_name import *:** Imports all items from a module. However, this is generally discouraged as it can lead to namespace conflicts and make code harder to understand.
  
* **Module Export Control:**
By default, Python exports all names defined in a module. However, you can control which names are exported using the `__all__` variable. This variable is a list of strings containing the names of the items that should be exported when using **from module import ***

* For Examples,
```python
# my_module.py
__all__ = ["my_function", "MyClass"]

def my_function():
    print("Hello from my_function")

class MyClass:
    def __init__(self):
        print("Hello from MyClass")

def _internal_function():
    print("This is an internal function")

# main.py
from my_module import *

my_function()
my_class = MyClass()

# _internal_function() # This would cause an error, not exported

```

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
* **Arithmetic Operators:** `+`, `-`, `*`, `/`, `%`, `**` (exponentiation)
* **Comparison Operators:** `==`, `!=`, `>`, `<`, `>=`, `<=`
* **Logical Operators:** `and`, `or`,`not`
* **Assignment Operators:** `=`, `+=`, `-=`, `*=`, `/=`
* **Membership Operators:** `in`, `not in`
* **Identity Operators:** `is`, `is not`
* **Bitwise operators:** `&`, `|`, `^`, `~`, `<<`, `>>`

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
## Python Boolean
### Values are True
* Almost any value is evaluated to `Tru` if it has some sort of content.
* Any string is `True`, except empty strings.
* Any number is `True`, except `0`.
* Any list, tuple, set, and dictionary are `True`, except empty ones.

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
**when to use lists, dictionaries, sets, and tuples in Python:**

|**Collection**|**Use**|
|--------------|-------|
| **List** | Use when you need an ordered sequence of items that may need to be modified. Lists are mutable, allowing you to add, remove, or change elements|
| **Dictionary** | Use when you need to store data in key-value pairs for efficient lookup. Dictionaries are mutable, and keys must be unique and immutable|
| **Set**| Use when you need to store a collection of unique elements, and order doesn't matter. Sets are mutable and useful for operations like checking membership and removing duplicates.|
| **Tuple** | Use when you need an ordered sequence of items that should not be changed. Tuples are immutable, meaning their elements cannot be modified after creation.|

### Lists
A list is created by placing all the items(elements) inside a square bracket `[]` seperated by commas. You can also use `list()` function to create lists.
```python
# empty list
new_list = []
# another way
another_list = list()
```
#### List's methods
* `append(element)`: Adds an element to the end of the list.
* `extend(iterable)`: Appends elements from an iterable to the end of the list.
* `insert(index, element)`: Inserts an element at a specific index.
* `remove(element)`: Removes the first occurrence of an element.
* `pop(index)`: Removes and returns the element at a specified index.
* `clear()`: Removes all elements from the list.
* `index(element)`: Returns the index of the first occurrence of an element.
* `count(element)`: Returns the number of times an element appears in the list.
* `sort()`: Sorts the list in ascending order.
* `reverse()`: Reverses the elements of the list.
* `copy()`: Returns a shallow copy of the list.

### Tuple
A tuple is created by placing all the items (elements) inside parentheses `()`, separated by commas. You can also use `tuple()` function to create tuples.
```python
# empty list
new_list = ()
# another way
another_list = tuple()
```
#### Tuple's methods
* `count(element)`: Returns the number of times an element appears in the tuple.
* `index(element)`: Returns the index of the first occurrence of an element.

### Set
Sets represent the mathematical notion of sets. Sets are mutable, iterable and don’t have any duplicate value. Python provides us, along with ‘set’ datatype, the mathematical functions associated with the sets such as **intersection**, **union**, **difference**, etc.
```python
# empty set
new_set = set()
# another way
another_set = set()
```
#### Set's methods
* `add(element)`: Adds an element to the set.
* `remove(element)`: Removes an element from the set. Raises an error if the element is not present.
* `discard(element)`: Removes an element from the set if it is present.
* `pop()`: Removes and returns an arbitrary element from the set.
* `clear()`: Removes all elements from the set.
* `union(set2)`: Returns a new set with elements from both sets.
* `intersection(set2)`: Returns a new set with common elements of both sets.
* `difference(set2)`: Returns a new set with elements from the first set that are not in the second set.
* `isdisjoint(set2)`: Returns True if two sets have no common elements.
* `issubset(set2)`: Returns True if all elements of the first set are present in the second set.
* `issuperset(set2)`: Returns True if the second set is a subset of the first set.
    
### Dictionary
In Python, a Dictionary can be created by placing a sequence of elements within curly `{}` braces, separated by ‘comma’. Dictionary holds a pair of values, one being the Key and the other corresponding pair element being its **Key-value**. Values in a dictionary can be of any datatype and can be duplicated, whereas keys can’t be repeated and must be immutable.
``` python
# empty dictionary
my_dict = {}
```
#### Dictionary's methods
* `pop(key):` Removes and returns the value associated with a key. Raises an error if the key is not found.
* `popitem():` Removes and returns the last inserted key-value pair as a tuple.
* `clear():` Removes all items from the dictionary.
* `update(dict2):` Updates the dictionary with key-value pairs from another dictionary. 
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
Comprehensions in Python provide a concise and efficient way to create new sequences from existing ones. They enhance code readability and reduce the need for lengthy loops. Python supports four types of comprehensions:
* List Comprehensions
* Dictionary Comprehensions
* Set Comprehensions
* Generator Comprehensions

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

> [!NOTE]
> * Python has four types of comprehensions: **list**, **set**, **dictionary**, and **generator expressions**.
> * here is no direct "tuple comprehension" in Python. If you use parentheses `()` in a comprehension-like syntax, you create a generator expression, not a tuple.
> * To create a tuple from a comprehension-like syntax, you must explicitly use the tuple constructor `tuple()` around the generator expression.

### Difference between Generator expression and Tuple Comprehension
|**Feature**|**Generator Expression**|**Tuple Comprehension**|
|-----------|------------------------|-----------------------|
| Syntax    | `(expression for item in iterable)` | `tuple(expression for item in iterable)` |
| Output | Creates a generator object | Creates a tuple |
| Memory Usage | Memory-effecient, generates values on-the-fly | Less memry-efficient than generators, creates the entire tuple in memory |
|Immutability | Can be iterated over only once | Immutable, cannot be changed after creation |

##### Why no direct Tuple Comprehension?
* Tuples are disigned to be immutable sequences of a fixed length. They are often used to represent a record of data with a specific structure.
* Generator expressions are designed to generate values lazily and efficiently.

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

---
## Python's conditional expressions (a.k.a. inline if)
Python doesn't support a **ternary operator**. Instead, we have something called a **conditional expression**.

Python's conditional expression looks like this:
```
noun = "item" if amount == 1 else "items"
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

--
## `else` keyword with loops (`for` and `while`)
* The `else` block is executed when a loop completes normally (without encountering a break statement).
* It's often used to perform actions that should only happen if the loop finishes all iterations.

**For example with `for`**
```python
for i in range(5):
    print(i)
else:
    print("Loop finished successfully")
```
**For example with `while`**
```python
i = 0
while i < 5:
    print(i)
else:
    print("Loop finished successfully")
```

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

#### `iter()` method is a built-in method that allows to create an iterator from an iterable.
* Syntax of `iter()` method
```python
iterator = iter(iterable)
```
* **Parameters,**
  * **iterable:** Any object capable of returning its elements one at a time. Examples include lists, tuples, dictionaries, and strings.
  * **Return Type:** Returns an **iterator object** that can be used with the `next()` function or a `for` loop to access the elements sequentially.

* **Examples of `iter()` method**
```python
# Convert string to iterator
str_ = "Python"
iterator = iter(str_)

print(next(iterator))
print(next(iterator))
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
### Basic structure of Exception Handling in Python
In python, exception handling is primarity done using the `try`, `except`, `else` and `finally` blocks. Let's break down each component:
* **try:** This block contains the code that may raise an exception. If an error occurs within this block, Python will immediately stop executing the code and look for an appropriate except block to handle the error.
* **except:** This block defines how to respond to specific exceptions. You can have multiple except blocks to handle different types of exceptions.
* **else:** This optional block runs if the code in the _try block executes without any errors_. It’s useful for code that should only run when no exceptions occur.
* **finally:** This block will execute _regardless of whether an exception occurred or not_. It’s typically used for cleanup actions, such as closing files or releasing resources.

**Syntax:**
```
try:
    # code that may cause exception
except:
    # code to run when exception occurs
finally:
    # code always executed no matter whether there is an exception or not    
```

* **For example of Exception Handling:**
```python
try:
    numerator = 10
    denominator = 0
    result = numerator /denominator
except ZeroDivisionError:
    print("Error: You cannot divide by zero.")
else:
    print(f"The result is {result}")
finally:
    print("Execution completed")
```
In this example:
* The try block attempts to divide 10 by 0, which raises a ZeroDivisionError
* The except block catches this specific error and prints an appropriate message
* The else block does not execute since an error occured
* The finally block runs regardless of whether an error occurred or not

### Catching Multiple Exceptions
You can also catch multiple exceptions using a single except block by specifying a tuple of exceptions:
```python
try:
    value = int(input('Enter a number: "))
    result = 100 /value
except (ValueError, ZeroDivisionError) as err:
    print(f"Error: {err})
else:
    print(f"The result is {result}")
```
### Raising Exceptions
Sometimes you may want to raise exceptions intentionally based on certain conditions in your code. You can do this using the raise keyword:
```python
def check_positive(number):
    if number < 0:
        raise ValueError("The number must be positive")
try:
    check_positive(-5)
except ValueError as err:
    print(f"Error: {e}")
```
Here, if a negative number is passed to the `check_positive` function, it raises a ValueError, which is then caught in the `try-except` block

### Defining Custom Exceptions
You cna create your own custom exceptions by defining a new class that inherits from Python's built-in Exception class. This allows you to create more meaningful error messages specific to your application:
```
class CustomError(Exception):
    pass
def do_something():
    raise CustomError("This is a custom error message")

try:
    do_something()
except CustomError as err:
    print(f"Caught an error: {err})
```

---
## The `with` Statement (Context Managers)
The `with` statement in Python is used for resource management, ensuring that resources are properly acquired and released. It simplifies code by handling setup and teardown options automatically.

**The basic syntax is:**
```python
with expression as variable:
    # code block
```
* `expression`: This is the context manager, an object that defines the `__enter__` and `__exit__` methods.
* `as variable`: This optional clause assigns the value returned by the `__enter__` method to the specified variable.
* `code block`: The code to be executed within the context.

### Context Managers
Context managers are objects that implement the context management protocol, which consists of two method:
* `__enter__()`: Called when the `with` statement is enterd. It can perform setup actions and return a value that will be assigned to the variable after `as` in the `with` statement.
* `__exit__(exc_type, exc_value, traceback)`: Called when the `with` statement is exited. It performs cleanup actions, such as closing files or releasing locks. If an exception occurred within the `with` block, `exc_value`, and `traceback` will contain information about the exception. Otherwise, they will be `None`. 

### Common File Handling with Context Manager
```python
with open("file.txt", "r") as file:
    data = file.read()
    # process data
```

In this case, the `open` function returns a file object, which acts as a context manager. The `with` statement ensures that the file automatically closed, even if an error occurs while reading or processing the data.

The `with` statement can also be used with custom context manages, which are classes that implement the `__enter__` and `__exit__` methods.
```python
class File:
    def __init__(self, filename, mode):
        self.filename = filename
        self.mode = mode
        self.file = None

    def __enter__(self):
        self.file = open(self.filename, self.mode)
        return self.file

    def __exit__(self, exc_type, exc_value, traceback):
        if self.file:
            self.file.close()

with File("example.txt", "w") as f:
    f.write("Hello, world!")
```

---
## Python Object-Oriented-Programming
### Everything in Python is an Object. 
Object-Oriented Programming (OOP) in Python revolves around the concepts of classes and objects. Classes are blueprints for creating objects, encapsulating data (fields) and behaviors (methods).
* **Fields (Attributes):** These are variables that store data within an object. There are two types:
  * **Instance Variables:** Unique to each object, defined within the **__init__** method.
  * **Class Variables:** Shared among all objects of a class, defined outside any method. 
* **Methods:** These are functions defined within a class that operate on the object's data. They define the actions an object can perform.
  * The **self** parameter refers to the instance of the object, allowing access to its attributes.
  * Methods can be used to modify the object's state, perform calculations, or interact with other objects

### Key OOP Principles:
* **Encapsulation**: Bundling data and methods within a class, controlling access to internal data.
* **Abstraction:** Hiding complex implementation details and exposing only essential information.
* **Inheritance:** Creating new classes (child classes) based on existing ones (parent classes), inheriting their attributes and methods.
* **Polymorphism:** Allowing objects of different classes to respond to the same method call in their own way.

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

* **For examples:**
```python
class Dog:
    species = "Canis familiaris"  # Class variable

    def __init__(self, name, age):
        self.name = name  # Instance variable
        self.age = age

    def bark(self):  # Instance method
        return "Woof!"

    @classmethod
    def get_species(cls):  # Class method
        return cls.species

    @staticmethod
    def is_mammal():  # Static method
        return True

# Creating objects
dog1 = Dog("Buddy", 3)
dog2 = Dog("Lucy", 5)

# Accessing attributes and methods
print(dog1.name)
print(dog2.bark())
print(Dog.get_species())
print(Dog.is_mammal())
```

## Generator
Generators in Python are a way to create iterators. They generate values on demand, which can be more memory-efficient than creating a list of all values at once. There are two main ways to create generators:
### Generator function
* Defined using the `def` keyword, like regular functions, but use the `yield` keyword instead of `return`
* When called, they return a generator object.
* Each time `yield` is encountered, the function pauses and returns the yielded value.
* When the generator is iterated over (e.g., using a for `loop` or `next()`), the function resumes from where it left off.
```python
def my_generator(n):
    # initialize counter
    value = 0

    # loop until counter is less than n
    while value < n:
        # produce the current value of the counter
        yield value

        # increment the counter
        value += 1
# iterate over the generator object produced by my_generator
for value in my_generator(3):
    # print each value produced by generator
    print(value)
```

### Generator expression
* Similar to list comprehensions but use parentheses `()` instead of square brackets `[]`.
* Creates a generator object without defining a separate function.
* More concise for simple generator logic.
```python
my_generator = (i for i in range(5))
for value in my_generator:
    print(value) # Output: 0 1 2 3 4
````
> [!NOTE]
> * Generator functions use `def` and `yield`, while generator expressions use parentheses `()` and a comprehension-like syntax.
> * Generator functions are better for more complex logic, while generator expressions are suitable for simple value generation.

### Exploring Python’s return vs. yield
#### Return Statement
The `return` statement is used to exit a function and return a value to the caller. When a function encounters a return statement, it immediately exits, and the value specified after return is passed back to the caller.
#### Yield Statement
The `yield` statement is used to create a generator function. Generator functions allow you to iterate over a sequence of values without storing them all in memory at once. When a generator function encounters a ‘yield’ statement, it temporarily suspends its execution and returns the value specified after yield.

> [!NOTE]
> **_Return is used to exit a function and return_** a value or just exit a function, while **_yield is used to create generator functions_** that can produce a sequence of values.
> **_return immediately exits the function_** when encountered, while **_yield suspends the function’s execution_** and allows it to be resumed later.
> Functions using **_return are regular functions_**, while functions using **_yield are generator functions_**.

### Generator `next()` statement
```python
def my_generator():
    yield "Hello world!"
    yield "GeeksForGeeks"

gen = my_generator()

while True:
    try:
        value = next(gen)
        print(value)
    except StopIteration:
        print("Generator exhausted.")
        break
```


### Introducing `yield from`
The `yield from` statement is used to delegate part of a generator’s operations to another generator. **_This is particularly useful when you have a generator that needs to yield values from another generator_**.
#### Why use `yield from`?
While you can write generators without `yield from`, using it offers several advantages:
1. Code Simplification: It reduces the need for explicit loops to yield values from another generator.
2. Readability: It makes your code more expressive and easier to understand.
3. Forwarding: It automatically forwards method calls like `send()`, `throw()`, and `close()` to the sub-generator.
4. Efficiency: It can make your code more efficient by reducing the overhead associated with loops.

* Example without `yield from`:
```python
def sub_generator():
 yield 1
 yield 2
 yield 3

def main_generator():
 yield 'Start'
 for value in sub_generator():
 yield value
 yield 'End'

for value in main_generator():
 print(value)
```
* Example With `yield from`:
```python
def sub_generator():
 yield 1
 yield 2
 yield 3

def main_generator():
 yield 'Start'
 yield from sub_generator()
 yield 'End'
for value in main_generator():
 print(value)
```

### Advanced Use Cases
In more advanced scenarios, `yield from` can also handle the delegation of `send()`, `throw()`, and `close()` calls. This can be particularly useful for complex generator interactions.
#### Without `yield from`
Handling `send()` and exceptions manually can be cumbersome:
```python

```

## Lambda/Anonymous Function 
### Lambda declaration
Use the `lambda` keyword instead of `def` to create a lambda function. Here's the syntax to declare the lambda function:
```pytho
lambda argument(s) : expression
```
Here,
* `argument(s)` - any value passed to the lambda function
* `expression` - expression is executed and returned

## Python Iterator
### Custom Iterators
Building an iterator from scratch is easy in Python. We just have to implement the `__iter__()` and `__next__()` methods:
* `__iter__()` returns the iterator object itself. If required, some initialization can be performed.
* `__next__()` must return the next item in the sequence. On reaching the end, and in subsequent calls, it must raise `StopIteration`.
```python
class PowTwo:
    """Class to implement an iterator
    of powers of two"""

    def __init__(self, max=0):
        self.max = max

    def __iter__(self):
        self.n = 0
        return self

    def __next__(self):
        if self.n <= self.max:
            result = 2 ** self.n
            self.n += 1
            return result
        else:
            raise StopIteration


# create an object
numbers = PowTwo(3)

# create an iterable from the object
i = iter(numbers)

# Using next to get to the next iterator element
print(next(i)) # prints 1
print(next(i)) # prints 2
print(next(i)) # prints 4
print(next(i)) # prints 8
print(next(i)) # raises StopIteration exception
```
### Infinite Iterators
An infinite iterator is an iterator that never ends, meaning that it will continue to produce elements indefinitely.
```python
from itertools import count

# create an infinite iterator that starts at 1 and increments by 1 each time
infinite_iterator = count(1)

# print the first 5 elements of the infinite iterator
for i in range(5):
    print(next(infinite_iterator))
```
**Explain:**
* Create an infinite iterator that start at **1** and increments by **1** each time
* And then print the first **5** elements of the infinite iterator using the `for` loop and the `next()` method.

## Nested Function and Closures
```python
def greet(name):
    # return a nested anonymous function
    return lambda: "Hi " + name

# call the outer function
message = greet("John")

# call the inner function
print(message()
```
```python
def outer(x):
    def inner(y):
        return x + y
    return inner

add_five = outer(5)
result = add_five(6)
print(result)  # prints 11
```

### When to use closures?
* Closures can be used to avoid global values and provide data hiding, and can be an elegant solution for simple cases with one or few methods.
* However, for larger cases with multiple attributes and methods, a class implementation may be more appropriate.
* Python Decorators make extensive use of closures as well.
* All function objects have a `__closure__` attribute that returns a tuple of cell objects if it is a closure function.


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
* [An Introduction to the With Statement in Python](https://builtin.com/software-engineering-perspectives/what-is-with-statement-python)
* [Python Special Methods](https://codeots.com/2023/03/21/python-special-methods-map-reduce-filter-apply-zip-lambda/)
* [Invoking Functions with and without Parentheses](https://www.geeksforgeeks.org/python-invoking-functions-with-and-without-parentheses/)
* [Python: Lambda,Map,Filter,Reduce and Zip function](https://medium.com/@lokeshsharma596/python-lambda-map-filter-reduce-and-zip-function-c59d8946a3ce)
* [Invoking Function with and without Parenthesis in Python](https://www.tutorialspoint.com/invoking-function-with-and-without-parenthesis-in-python)
* [Asyncio Vs Threading In Python](https://www.geeksforgeeks.org/asyncio-vs-threading-in-python/)
* [Use of nonlocal vs global](https://www.geeksforgeeks.org/use-of-nonlocal-vs-use-of-global-keyword-in-python/)
* [Understanding Python Namespaces Through Recursion](https://medium.com/@gough.cory/understanding-python-namespaces-through-recursion-c921cbd4e522)
* [Python Variable Scopes](https://www.pythontutorial.net/advanced-python/python-variable-scopes/)
* [What is Closure? How to Implement it in Python?](https://anazimzada2020.medium.com/what-is-closure-how-to-implement-it-in-python-7f12ca54bdf7)
* [Closures and Decorators in Python](https://medium.com/data-science/closures-and-decorators-in-python-2551abbc6eb6)
