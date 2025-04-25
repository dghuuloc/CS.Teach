# <p align = "center"> Fundamentals of Java Programming Language </p>
---

### <p align="center">"Everything is an Object in Java"</p>
---
## <img src="https://marcus-biel.com/wp-content/themes/marcus-biel/images/wizard.png" width="80" height="80"> Introduction to Java
### What is Java?
Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language.

### Types of Java Applications
- __Standalone Application__: Standalone applications are also known as desktop applications or window-based applications. These are traditional software that we need to install on every machine.
- __Web Application__: An application that runs on the server side and creates a dynamic page is called a web application. Currently, `Servlet`, `JSP`, `Struts`, `Spring`, `Hibernate`, `JSF`, etc.
- __Enterprise Application__: An application that is distributed in nature, such as banking applications, etc. is called an enterprise application. It has advantages like high-level security, load balancing, and clustering. In Java, `EJB` is used for creating enterprise applications.
- __Mobile Application__: An application which is created for mobile devices is called a mobile application. Currently, Android and Java `ME` are used for creating mobile applications.

### Java Platforms/Editions
There are 4 platforms or editions of Java
- __Java SE (Java Standard Edition)__: It is a Java programming platform. It includes Java programming API such as `java.lang`, `java.io`, `java.net`, `java.util`, `java.sql`, `java.math`, etc. It includes core topics like OOPs, String. Regex, Exception, Inner Classes, Multithreading, I/O Stream, Networking, AWT, Swing, Reflection, Collection,...
- __Java EE (Java Enterprise Edition)__: It is an enterprise platform that is mainly used to develop web and enterprise applications. It is built on top of the Java SE platform. It includes topics like `Sevlet`,`JSP`, `Web Services`, `EJB`, `JPA`,...
- __Java ME (Java Micro Edition)__:It is a micro platform that is dedicated to mobile applications.
- __Java FX__:It is used to develop rich internet applications. It uses a lightweight user interface API

---
## JDK, JRE, adn JVM
JDK = JRE + Development Tool
JRE = JVM + Library Classes

---
## First Java Program
Let's write a sample Hello World application
``` java 
/**
 * This is very first simple Java program.
 * FileName: "Main.java"
 */

import java.util.*;
import java.io.*;
import java.lang.*;

public class Main {
  public static void main(String[] args) {
    // Prints "Hello, World" to the terminal window.
    System.out.println("Hello, World");
  }
}
```
> [!NOTE]
> Notice that when we declare a class, we must declare it inside a file with __the same name__ (Main.java), otherwise we'll get an error when compiling.

Now open the  the terminal / Command Prompt. Change your current directory in the terminal / Command Prompt to the directory where your file is located. And compile the file :
```
$ javac Main.java
```
Now run the file using `java` command!
```
$ java Main
Hello, World
```

---
## Commnents 
- Comments in a program are called _inline documentation_
- They should be included to explain the purpose of the program and describe processing steps
- They do not affect how a program works
- Java comments can take three forms:

``` java
  // this comment run to the end of the line
  
  /* this comment runs to the terminating 
   * symbol, even across line breaks 
   */

  /** 
   * this is a javadoc comment 
   */ 
```

---
## Data Types
In Java, there are two kinds of data types:
### Primitive data type
- The primitive Data Types are built-in data types and they specify the type of value stored in a variable and the memory size. The primitive data types do not have any additional methods
- The primitive data types includes `byte`, `short`, `int`, `long`, `float`, `double`, `char`, `boolean`

The following table provides more description of each primitive data type.

| PRIMITIVE TYPE  | STORAGE SIZE(bit) | RANGES |
|-----------------|:-----------------:|:------|
| `byte`  	  |  `8 bits`  | 8-bit signed integer within the range of -128 to 127 |
| `short`   	  |  `16 bits` | 16-bit signed integer within the range of -32,768 to 32,767 |
| `int`   	  |  `32 bits` | 32-bit signed integer within the range of -2147483648 to 2147483647 |
| `long`       	  |  `64 bits` | 64-bit signed integer within the range of -9223372036854775808 to 9223372036854775807 |
| `float`         |  `32 bits` | single-precision 32-bit floating point within the range of 1.4E-45 to 3.4028235E38 |
| `double`     	  |  `64 bits` | double-precision 64-bit floating point within the range of 4.9E-324 to 1.7976931348623157E308 |
| `char`   	  |  `16 bits` | single 16-bit Unicode character within the range of `\u0000` (or 0) to `\uffff` (or 65,535 inclusive) |
| `boolean`   	  |  `1 bit`   | It can be either `true` or `false` |

### Non-primitive or reference data type
- Non-primitive data types are the reference data types or user-created data types. All non-primitive data types are implemented using object concepts.Every variable of the non-primitive data type is an object. The non-primitive data types may use additional methods to perform certain operations. The default value of non-primitive data type variable is `null`.
- In Java, examples of non-primitive data types are `String`, `Array`, `List`, `Queue`, `Stack`, `Class`, `Interface`

### Default Initialization of Instance Variables in Java
> [!NOTE]
> This default initialization applies for instance variables, not for method variables. For variables in method, we have to initialize them explicitly.

So remember these rules:
- __Integer numbers__ have default value: `0`
  - __int__ type: `0`
  - __byte__ type: (byte) `0`
  - __short__ type: (short) `0`
  - __long__ type: `0L`
- __Floating point numbers__ have default value: `0.0`
  - __float__ type: 0.0f
  - __double__ type: 0.0d
- __Boolean variables__ have default value: `false`
- __Character variables__ have default value: `‘\u0000’`
- __Object references__ have default value: `null`

---
## Type Conversion or Type Casting
Type conversion in Java can be either `implicit` or `explicit`

### Widening Type Casting (automatically)
When the compiler converts a smaller type of data to a larger one automatically, it's known as an implicit or narrowing type conversion. The flow of conversion should be as follows:
``` java
public class Main {
  public static void main(String[] args) {
    int myInt = 9;
    double myDouble = myInt;   // automatic casting: int to double
    
    System.out.println(myInt);    // Outputs 9
    System.out.println(myDouble);   // Outputs 9.0
  }
}
```

### Narrowing Type Casting (manually)
If we try to convert a larger data type to a smaller one, we need to add the `(data_type)` cast opeator explicitly.
The flow of conversion in this case will be the opposite of what you've seen already:
``` java
public class Main {
  public static void main(String[] args) {
    double myDouble = 9.78d;
    int myInt = (int) myDouble;   // manual casting: double to int
    
    System.out.println(myDouble);   // Outputs 9.78
    System.out.println(myInt);    // Outputs 9
  }
}
```

---
## Java Autoboxing and Unboxing
### Java Autoboxing - Primitive Types to Wrapper Objects
In __autoboxing__, the Java compiler automatically converts primitve types into their corresponding wrapper class objects. For example,
``` java
	int a = 56;
	
	// autoboxing
	Integer aObj = a;
```

### Java Unboxing - Wrapper Objects to Primitive Types
In __unboxing__, the Java compiler automatically converts wrapper class objects into their conrresponding primitive types. For example,
``` java
	// autoboxing 
	Integer aObj = 56;
	
	// unboxing
	int a = aObj;
```

### Autoboxing and Unboxing together
``` java
import java.util.ArrayList;

class Main {
  public static void main(String[] args) {
    
    ArrayList<Integer> numbers = new ArrayList<>();
    
    // autoboxing
    numbers.add(5);
    numbers.add(4);
    numbers.add(7);
    
    System.out.println("ArrayList: " + numbers);
    
    // unboxing 
    int number = numbers.get(0);
    System.out.println("Value at index 0: " + number);
  }
}
```

---
## Escapse Sequences 
Some Java Escape sequences:
- `\b`  backspace
- `\t`  tab
- `\n`  newline
- `\r`  carriage return
- `\""` double quote
- `\'`  single quote
- `\\` backslash

---
## Variable
### Local variables
- Local variables are declared in methods, constructors, or blocks.
- Local variables are created when the method, constructor or block is entered and the variable will be destroyed once it exits the method, constructor, or block.
- Access modifiers cannot be used for local variables.
- Local variables are visible only within the declared method, constructor, or block.
- Local variables are implemented at stack level internally.
- There is no default value for local variables, so local variables should be declared and an initial value should be assigned before the first use.

### Instance variables
- Instance variables are declared in a class, but outside a method, constructor or any block
- When a space is allocated for an object in the heap, a slot for each instance variable value is created
- Instance variables are created when an object is created with the use of the keyword `new` and destroyed when the object is destroyed
- The instance variables are visible for all methods, constructors and block in the class. Normally, it is recommended to make these variables private (access level)
- Instance variables have default values

### Static/Class variables
- Class variables also known as static variables are declared with the static keyword in a class, but outside a method, constructor or a block
- There would only be one copy of each class variable per class, regardless of how many objects are created from it
- Static variables are rarely used other than being declared as constants. Constants are variables that are declared as public/private, final, and static. Constant variables never change from their initial value
- Static variables are created when the program starts and destroyed when the program stops
- Visibility is similar to instance variables. However, most static variables are declared public since they must be available for users of the class
- Default values are same as instance variables
- Static variables can be accessed by calling with the class name ClassName.VariableName

---
## Varargs
### Syntax of Varargs
The syntax for implementing varargs in as follows:
```
accessModifier methodName(dataType... args) {
  // method body
}
```
> [!NOTE]
> - While defining method signature, always keep varargs at last
> - A method can have only one varargs parameter

### Expamples
``` java
class Main {
	private void test(int... args) {
		int sum =0;
		for( int i : args) {
			sum += i;
		}
		System.out.println("Sum is: " + sum);
	}

	private void test(boolean p, String... args) {
		boolean negate = !p;
		System.out.println("negate " + negate);
		System.out.println("args.length " + args.length);
	}

	public static void main(String[] args) {
		Main obj = new Main();
		obj.test(1,2,3);
		obj.test(true, "hello", "world");
	}
}
```

---
## Operators
### Arithmetic Operators
| OPERATOR     | OPERATION |
|--------------|:---------:|
|	`+`	| Addition |
|	`-`	| Substraction |
|	`*`	| Multiplication |
|	`/`	| Division |
|	`%`	| Remainder (Modulo/Modulus) |

### Assignment Operators
| OPERATOR     | OPERATION | EQUIVALENT TO |
|--------------|:---------:|:---------:|
| `+=` | `a += b` | `a = a + b` |
| `-=` | `a -= b` | `a = a - b` |
| `*=` | `a *= b` | `a = a * b` |
| `/=` | `a /= b` | `a = a / b` |
| `%=` | `a %= b` | `a = a % b` |

### Relational Operators
| OPERATOR     | EXPLANATION | USAGE |
|--------------|:---------:|:---------:|
| `==` | Is Equal To | `5 == 8` returns `false` |
| `!=` | Is Not Equal To | `5 != 8` returns `true` |
| `>` | Is Greater Than | `5 > 8` returns `false` |
| `<` | Is Less Than | `5 < 8` returns `true` |
| `>=` | Greater Than or Equal To | `5 >= 8` returns `false` |
| `<=` | Less Than or Equal To | `5 <= 8` returns `true` |

There aren't that many operators to use in conditional statements and most of them are pretty straight forward:
``` java
public class Main{
	public static void main(String[] args) {
		int a = 4;
		int b = 5;
		boolean result;
		result = a < b; // true
		result = a > b; // false
		result = a <= 4; // a smaller or equal to 4 - true
		result = b >= 6; // b bigger or equal to 6 - false
		result = a == b; // a equal to b - false
		result = a != b; // a is not equal to b - true
		result = a > b || a < b; // Logical or - true
		result = 3 < a && a < 6; // Logical and - true
		result = !result; // Logical not - false
	}
}
```
### Logical Operators
- Logical And (`&&`): Evaluates to true, only if both conditions are true
- Logical Or (`||`): Evaluates to true if one of the two or both conditions are true
- Not (`!`): Evaluates to false if the inner condition evaluates to true and vise versa

### Unary Operators
| OPERATOR     | EXPLANATION |
|--------------|:---------:|
| Increment (++) | Increments a given value by 1 |
| Decrement (--) | Decrements a given value by 1 |

---
## How to work with String in Java?
### How to create a string?
There are two ways to create the string by using the **String class**. We can create an object of String by **string literal** and **new keyword**. Whenever we create a string, it always stores in **String constant pool**. Read more [here](https://javagoal.com/string-in-java/#3)

#### Creating strings using string literals
``` java 
String str = "Java Programming";
```
* **If the string already exists**, the new string is not created. Instead, the new reference, `str` points to the already existed string (`Java Programming`).
* **If the string doesn't exits**, the new string(`Java Programming`) is created.

#### Creating strings using the new keyword,
``` java 
String str = new String("Java Programming");
```
Here, the value of the string is not directly provided. Hence, a new `Jav Programming` string is created even though `"Java Programming"` is already present inside the memory pool.

### Differentiate String `==` operator and `equals()` method
We have used the `==` operator and `equals()` method to check if two strings are equal. Here,
* `==` checks if the _reference_ to string objects are equal or not. A reference comparison, i.e. both objects point to the same memory location
* `equals()` checks if the _content_ of the string object are equal. To evaluates to the comparison of values in the objects

For example,
```java
	String str1 = "HELLO";
	String str2 = "HELLO";
	String sttr3 =  new String("HELLO");
	System.out.println(str1 == str2); // true
	System.out.println(str1 == str3); // false
	System.out.println(str1.equals(str2)); // true
	System.out.println(str1.equals(str3)); // true
```

### Why is String Immutable and Final in Java?
Whenever we create a string in java either as a **string literal** or by use of the **new keyword**. The JVM creates a **string object in memory**. The **string object** created in memory is immutable. We can’t change the value of the string in the same object. If you are making any change in a string, then the compiler will create a new string instead of a modification in the string. Read more [here](https://javagoal.com/immutable-string/) or [here](https://www.scientecheasy.com/2020/05/java-immutable-string.html/) or [here](https://medium.com/@rabinarayandev/understanding-strings-in-java-immutability-internals-and-the-string-pool-368ecbac5d3b), [String mutable](https://dev.to/abhishek_kumar_d9009a7ae6/string-handling-in-java-immutability-of-strings-stringbuilder-vs-stringbuffer-3ckk)

### How to Format a String
You've already seen the usage of the `+` operator to sew strings together or format them in a specific way. A better way to fromat a string is the `String.format()` method.
``` java 
public class Main {
	public static void main(String[] args) {
		String name = "Farhan";
		int age = 27;
		
		String formmattedString = String.format("My name is %s and I'm %d years old.", name, age);
		System.out.println(formmattedString);
	}
}
```
A chart of the commonly used specifiers are as follows:
| SPECIFIER    | DATA TYPE |
|--------------|:---------:|
| `%b`, `%B`   |  Boolean  |
| `%s`, `%S`   |  String   |
| `%c`, `%C`   |  Unicode Character |
| `%d`         |  Decimal Integer |
| `%f`         |  Floating Point Number |
| `%o`         |  Octal Integers |
| `%x`, `%X`   |  Hexadecimal Numbers|
| `%e`, `%E`   |  Scientific Notations |

> [!NOTE]
> What Are the Different Ways of Inputting and Outputting Data?
> - `System.out.println()` method
> - `System.out.print()` method that prints out a given string without appending a newline character to it.
> - `System.out.printf()` method is kind of combination of the `System.out.print()` and `String.format()` methods.

---
## Conditional Statements
### `if-else` statements
``` java
if (condition_1) {

} else if (condition_2) {

} else {

}
```

### `switch-case` statements

---
## Iterative Statements
### `for` loop
### `for-each` loop
There is also a __"for-each"__ loop, which is used exclusively to loop through elements in arrays:
``` java
for (type variable : arrayName) {
  ...
}
```

### `while` loop
``` java
while(condition) {
	// statements to be executed
}
```

### `do-while` loop
``` java
do {
	// statements to be executed
} while(conditon);
```

### break and continue
- `break` will cause the loop to stop and will go immediately to the next statement after the loop
- `continue` will stop the current iteration and will move to the next one. Notice that inside a for loop, it will still run the third section.

### `exit()` method
Syntax of `exit()` in Java
``` java
public static void exit(int status);
```

`System.exit()` method takes status as a parameter, these status codes tell about the status of termination. This status code is an integer value and its meanings are as follows:
- `exit(0`) - Indicates successful termination
- `exit(1)` - Indicates unsuccessful termination
- `exit(-1)` - Indicates unsuccessful termination with Exception

> [!NOTE]
> Any non-zero value as status code indicates unsuccessful termination.

---
## Package
### Built-in Package
Built-in packages are existing java packages that come along with the JDK (`java.lang`, `java.util`, `java.io`, etc).

### User-defined Package
To define a package in Java, you use the keyword `package`.
``` java
package packageName;
```

For example,
```
└── com
  └── starter
    └── Student.java
```

``` java
package com.starter
```

### Import packages
Java has an `import` statement that allows you to import an entire package.
```java
import package.name.ClassName;   // To import a certain class only
import package.name.*   // To import the whole package
```
Here is an example to import a package using the `import` statement.

```
class MyClass implements java.util.Date {
    //body
}
```

---
## Java Modifiers
### Access Modifiers
| MODIFIER    | DESCRIPTION |
|--------------|:---------|
| `public`   | The access level of a public modifier is everywhere. It can be accessed from within the class, outside the class, within the package and outside the package  |
| `protected`   | The access level of a protected modifier is within the package and outside the package through the child class. If you do not make the child class, it cannot be accessed from outside the package  |
| `default`   | The access level of a default modifier is only within the package. It cannot be accessed from outside the package. If you do not specify any access level, it will be the default |
| `private`   | The access level of a private modifier is only within the class. It cannot be accessed from outside the class |

- For __classes__, we can use either `public` or `default`. Java also allows us to declare a `protected` class. A protected class is only accessible to its subclasses and classes in the same package.
- For __fields__, __methods__, __constructors__, we can use `private`, `protected`, `default`, `public`

> [!NOTE]
> We cannot declare classes and interfaces private/protected in Java. However, the nested classes can be declared private or static.

### Non-access Modifiers
| MODIFIER    | DESCRIPTION |
|--------------|:---------:|
| `final`   | This modifier is used to create a constant variable, method, or class. If a variable is defined as final, it cannot be changed after initialization. If a method is final, it cannot be overridden, also final classes cannot be extended by any subclass |
| `static`   | This modifier is used to create a class-level variable or method. Static members can be accessed without creating an object of the class |
| `abstract`   | This modifier is used to create an abstract class or method that cannot be instantiated directly. An abstract class must be extended by a subclass that provides concrete implementations of its abstract methods |
| `synchronized`   | This modifier is used to make a method thread-safe by ensuring that only one thread can access it at a time |
| `volatile`   | This modifier is used to indicate that a variable is stored in main memory, so it’s read and written from/to main memory instead of the CPU cache |
| `transient`   | If you don’t want to serialize a variable you should use this. Transient variables are typically used for temporary or non-persistent data |
| `strictfp`   | This modifier guarantees the same floating-point calculations in any environment. Useful for precise calculations in financial or scientific applications |
| `native`   | This modifier indicates that a method will be implemented in languages other than Java (e.g., C, C++) |

- For __classes__, we can use either `final` or `abstract` 
- For __fields__, __methods__, we can use the `final`, `static`, `abstract`, `transient`, `synchronized`, `volatile`

> [!NOTE]
> A Constructor is that it can not be final, static or abstract

### `final` keyword
* final fields: Once a variable is assigned a value, it cannot be changed (constant variables)
* final methods: A final method cannot be overridden by subclasses, which is useful when you want to maintain the original behavior in derived classes
* final classes: A final class cannot be subclassed, meaning no other class can inherit from it. This is often done for security or efficiency.

### `abstract` keyword
* The `abstract` keyword cannot be used when the' final' keyword is used.
* Abstract methods cannot be declared `private`, `stattic`.
* An abstract keyword *cannot be used with fields or constructors*.
* An abstract class could not have an instance.


---
## Array
### Array length

---
## Object Oriented Programming Language
``` java
[class_name] {
    // state or field
    // constructors (No-Arg Constructor, Parameterized Constructor)
    // behavior or method
}
```

### Components in Class
* The fields (also known as variables or properties) of a class describe the state of its objects. 
* Methods (also known as functions) on the other hand describes the behavior.

### Diference between object and reference
A class in a blue print/user defined datatype in java that describes the behavior/state that the object of its type support.
``` java
public class Student {
	String name = "Krishna";
	int age = 20;
	
	void greet() {
		System.out.println("Hello how are you");
	}
}

public class Example {

	public static void main(String[] args) {
		Student obj = new Student();
	}
}
```
An object is an instance of a class created from it using the new keyword.
Once you create an object of a class, using it you can access he members of the class.

The objects are created in the heap area and, the reference `obj` just points out to the object of the `Student` class in the heap, i.e. it just holds the memory address of the object (in the heap).

And since the String is also an object, under name, a reference points out to the actual String value (“Krishna”).

`Classes`, `interfaces`, `arrays`, `enumerations` and, `annotations` are the in Java are reference types in Java. Reference variables hold the objects/values of reference types in Java

### `this` and `super` keyword
#### Why using "this" keyword to get superclass methods?
There is no difference between `this.method()` and `super.method()` until the said `method()` gets *overridden* in the caller's class. In parallel, there is no difference between `this.field` and `super.field` until the said `field` gets *hidden* in the caller's class.

For example, with
```java
class SuperClass {
    protected String field = "SuperClass";

    public void method() {
        System.out.println("SuperClass");
    }

}

class SubClass extends SuperClass {
    // private String field = "SubClass";

    // @Override
    // public void method() {
    //     System.out.println("SubClass");
    // }

    public SubClass() {
        method();
        this.method();
        super.method();
    }

    public SubClass(String field) {
        System.out.println(field);
        System.out.println(this.field);
        System.out.println(super.field);
    }
}
```

### Constructor
> [!NOTE]
> A constructor cannot be `abstract` or `static` or `final`
> A constructor be able to have `default` or `public` or `private` or `protected`
> It is important to note that constructors in Java are not inherited. Hence, there is no such thing as constructor overriding in Java. However, We able to call the superclass constructor form the subclass constructor using `super()`. It's a special form of the `super` keyword
> `super()` can be used only inside the `subclass constructor` and must be the fist statement.
> When an object of class is created, it automatically calls the default or no-arg constructor of that class

``` java
// Java programm to ilustrate Constructor Chaining
// Within same class Using this() keyword

class Temp {
	// default constructor 1
	// default constructor will call another constructor
	// using this keyword from same class
	
	Temp() {
		// calls constructor 2
		this(5);
		System.out.println("The Default constructor");
	}
	
	// parameterized constructor 2
	Temp(int x) {
		// calls constructor 3
		this(5, 15);
		System.out.println(x);
	}
	
	// parameterized constructor 3
	Temp(int x, int y) {
		System.out.println(x*y);
	}
	
	public static void main(String[] args) {
		// invokes default constructor first
		new Temp();
	}
}

```

#### Point to remember about constructor in Java class:
- First and most important point is that, name of the constructor should be same as that of class name
- And next important point is, constructor don’t have any return type unlike methods (not even void)
- Every concrete class and abstract class has a constructor
- Constructor in interfaces is not allowed
- It can have all Java statements and logic but shouldn’t return any value
- Constructor can have zero arguments which are called default constructor (or no-arg constructor)
- Constructor can have one or more input parameters which are called as parameterized constructor
- If we don’t specify any constructor explicitly then compiler inserts a default no-arg constructor during compilation
- But when we declare any constructor explicitly either it is no-arg constructor or parameterized constructor, then compiler doesn’t inserts default constructor
- this() is used to invoke another constructor in the same class, if present must be the first statement of the constructor. There cannot be two this() statement in the constructor call
- Constructor cannot be inherited therefore it can’t be overridden
- _super()_ is used to invoke another constructor in super class, if present must be the first statement of the constructor
- But both this() and super() cannot exists at the same time because both cannot be first statement of the constructor which results compilation failure
- A class can have more than one constructor i.e.; Constructor Overloading
- All four access modifier i.e.; private, default, protected, public are allowed (no restriction on access modifiers)
- Private constructor are used for singleton design pattern
- Non-access modifier like static, final, synchronized, abstract, strictfp, transient, volatile are not allowed

### Abstract Class
Abstract classes and methods created using this keyword `cannot instantiate objects` directly and require inheritance for data extraction.
* Class: An abstract class is a restricted class that cannot be used to create objects (to access it, it must be inherited from another class).
* Method: An abstract method can only be used in an abstract class, and it does not have a body. The body is provided by the subclass (inherited from).
* Constructor: Abstract classes can have constructors, which are used to initialize instance variables and perform other initialization tasks. However, because abstract classes cannot be instantiated directly, their constructors are typically called constructors in concrete subclasses
```java
abstract class Person {
	private String name;
	private String gender;
	
	public Person(String nm, String gen){
		this.name=nm;
		this.gender=gen;
	}
	
	//abstract method
	public abstract void work();
	
	@Override
	public String toString(){
		return "Name="+this.name+"::Gender="+this.gender;
	}

	public void changeName(String newName) {
		this.name = newName;
	}	
}

public class Employee extends Person {
	private int empId;
	
	public Employee(String nm, String gen, int id) {
		super(nm, gen);
		this.empId=id;
	}

	@Override
	public void work() {
		if(empId == 0){
			System.out.println("Not working");
		}else{
			System.out.println("Working as employee!!");
		}
	}
	
	public static void main(String args[]){
		//coding in terms of abstract classes
		Person student = new Employee("Dove","Female",0);
		Person employee = new Employee("Pankaj","Male",123);
		student.work();
		employee.work();
		//using method implemented in abstract class - inheritance
		employee.changeName("Pankaj Kumar");
		System.out.println(employee.toString());
	}

}

```


### Interface
- Like __abstract classes__, interfaces __cannot__ be used to create objects (in the example above, it is not possible to create an "Animal" object in the MyMainClass)
- Interface methods do not have a body - the body is provided by the "implement" class
- On implementation of an interface, you must override all of its methods
- Interface methods are by default `public` and `abstract`
- Interface fields are by default `public static final`
```java
interface Language {
  // by default public static final
  String type = "Programming Language";
  
  // by default public abstract
  void getName();
}
```
- *An interface cannot contain a constructor (as it cannot be used to create objects)*
- Java does not support "multiple inheritance" (a class can only inherit from one superclass). However, it can be achieved with interfaces, because the class can implement multiple interfaces.

```java
interface Polygon {
    void getArea();

    // default method
    default void getPerimeter(int... sides) {
        int perimeter  = 0;
        for(int side : sides){
            perimeter  += side;
        }
        System.out.println("Perimeter: " + perimeter );
    }

    default void getSides() {
        System.out.println("I can get sides of a polygon.");
    }
}


class Triangle implements Polygon {
    private int a, b, c;
    private double s, area;
    Triangle(int a, int b, int c) {
        this.a = a;
        this.b =b;
        this.c = c;
        s = 0;
    }

    @Override
    public void getArea() {
        s = (double) (a + b + c)/2;
        area = Math.sqrt(s*(s-a)*(s-b)*(s-c));
        System.out.println("Area: " + area);
    }

    @Override
    public void getPerimeter(int... sides) {
        Polygon.super.getPerimeter(sides);
    }

    @Override
    public void getSides() {
        Polygon.super.getSides();
    }
}

// implement the interface
class Rectangle implements Polygon {
    @Override
    public void getArea() {
        int length = 6;
        int breadth = 5;
        int area = length*breadth;
        System.out.println("The eare of the rectangle is " + area);
    }

    @Override
    public void getSides() {
        System.out.println("I have 4 sides.");
    }
}

// implement the interface
class Square implements Polygon {
    @Override
    public void getArea() {
        int length = 5;
        int area = length * length;
        System.out.println("The area of the square is " + area);
    }
}

public class Main {
    public static void main(String[] args) {

        // create an object of Rectangle
        Rectangle rectangle = new Rectangle();
        rectangle.getArea();
        rectangle.getSides();

        // create an object of Square
        Square square = new Square();
        square.getArea();
        square.getSides();

        // create an object of Triangle
        Triangle triangle = new Triangle(2, 3, 4);
        triangle.getArea();
        triangle.getPerimeter(2, 3, 4);
    }
}
```
> [!NOTE]
> All the methods inside an interface are implicitly `public` and all fields are implicitly `public static final`.

### Overriding and Overloading

#### Method Overriding and Method Overloading
- Definitions
  - _Overloading_: occurs when two or more methods in one class have the same method name but different parameters.

  - _Overriding_: means having two methods with the same method name and parameters (i.e., method signature). One of the methods is in the parent class and the other is in the child class. Overriding allows a child class to provide a specific implementation of a method that is already provided its parent class.

> [!NOTE]
> We cannot override the methods declared as `final` and `static`
> We should always override `abstract methods` of superclass

## Java Enums
An `enum` is a special "class" the represents angroup of __constants__ (unchangeable variables, like `final` variables). All enum constant is always `public`, `static`, `final` by default

To create an `enum`, use the `enum` keyword (instead of class or interface), and separate the constants with a comma. Note the they should be in uppercase letters

You can access `enum` constants with the __dot__ syntax:
``` java 
enum Level {
LOW,
MEDIUM,
HIGH
}

public class Main { 
  public static void main(String[] args) { 
    Level myVar = Level.MEDIUM; 
    System.out.println(myVar); 
  } 
}
```

## Exception Handling
### `throw` and `throws` keywords
In Java, exceptions can be categorized into two types:
- __Unchecked Exceptions__: They are not checked at compile-time but at run-time.For example: `ArithmeticException`, `NullPointerException`, `ArrayIndexOutOfBoundsException`, exceptions under `Error` class, etc.
- __Checked Exceptions__: They are checked at compile-time. For example, `IOException`, `InterruptedException`, etc.
For example,
``` java
try {
    throw new NullPointerException();
}
catch (NullPointerException e) {
    System.out.println(e);
}

try {
    throw new IOException();
}
catch (IOException e) {
    e.printStackTrace();
}
System.exit(0);
```

- Calling `println(e)`:
```
java.lang.NullPointerException
```

- Calling `e.printStackTrace()`:
```
java.io.IOException
    at package.Test.main(Test.java:74)
```

## Collection
In UML, <<interface>> is used to indicate an interface class.  Set and List extend the Collection interface:
* **Collection** — Defines basic methods that all collections must support.
* **Set** — Defines a collection that does not allow duplicate elements.
* **List** — Defines a collection that stores elements in a sequence.  It supports index access and allows duplicate elements.
* **Map** — Similar to a collection, but a map stores key-value pairs (not just values) where each value has a unique key to identify it.  A Map is different enough from a Collection that it does not extend the Collection

The HashSet, ArrayList, LinkedList, and HashMap classes implement the interfaces above.  In UML, a class that implements an interface is indicated with a dotted arrow:
* **HashSet** — Stores only unique elements (no duplicate values allowed).
* **ArrayList** — Array-based, so it’s more efficient than a LinkedList for accessing elements randomly (i.e., using index), but less efficient when inserting or deleting elements in the middle of the list (see 3-4).
* **LinkedList** – Dynamic, like ours, but with many additional methods including those to support stack and queue operations.  Less efficient than an ArrayList for accessing elements randomly (i.e., using index), but more efficient if inserting or deleting elements in the middle of the list.
* **HashMap** – Stores key-value pairs (no duplicate keys allowed).


### Methods of Collection

The Collection interface includes various methods that can be used to perform different operations on objects. These methods are available in all its subinterfaces.

- `add()` - inserts the specified element to the collection
- `size()` - returns the size of the collection
- `remove()` - removes the specified element from the collection
- `iterator()` - returns an iterator to access elements of the collection
- `addAll()` - adds all the elements of a specified collection to the collection
- `removeAll()` - removes all the elements of the specified collection from the collection
- `clear()` - removes all the elements of the collection

### List Interface

``` java

List<Data-Type>linkedlist = new LinkedList<Data-Type>();   
    
List<Data-Type>arraylist = new ArrayList<Data-Type>();
    
List<Data-Type>vector = new Vector<Data-Type>();

List<Data-Type>stack = new Stack<Data-Type>();

```

#### Methods of List

Some of the commonly used methods of the Collection interface that's also available in the List interface are:

- `add()` - adds an element to a list
- `addAll()` - adds all elements of one list to another
- `get()` - helps to randomly access elements from lists
- `iterator()` - returns iterator object that can be used to sequentially access elements of lists
- `set()` - changes elements of lists
- `remove()` - removes an element from the list
- `removeAll()` - removes all the elements from the list
- `clear()` - removes all the elements from the list (more efficient than removeAll())
- `size()` - returns the length of lists
- `toArray()` - converts a list into an array
- `contains()` - returns true if a list contains specified element

### Queue Interface

```java
Queue<Data-Type> pq = new PriorityQueue<Data-Type>(); 
Queue<Data-Type> ad = new ArrayDeque<Data-Type>(); 
```

```java
Deque<Data-Type> ad = new ArrayDeque<Data-Type>();
```

### Set Interface

``` java

Set<Data-Type> hs = new HashSet<Data-Type>();  

Set<Data-Type> lhs = new LinkedHashSet<Data-Type>();  

Set<Data-Type> ts = new TreeSet<Data-Type>();  

```

```java
SortedSet<Data-Type> ts = new TreeSet<Data-Type>();  
```

### Map Interface

## Rules for writing a Java Program

- Java always uses higher CamelCase for writing class names and lower camelCase for writing method names. Variable names should always start with either an alphabet or an underscore(_). It can contain digits but not at starting. Use meaningful names for variables.

- Java is case-sensitive. ‘Hello’ is not the same as ‘heLLo’.

- Use indentation for structuring your program. The body of a class definition and method definition should be indented to increase the readability of your program.

- Every executable statement in Java should terminate with a semicolon.

## Stream API

### Introduction of Streams in Java

Consider Java stream as a pipeline that consists of a stream source followed by zero or more intermediate operations and a terminal operation. Stream is not a collection or a data structure where we can store data.

- `Stream source` is a Stream instance that contains the initial data.
- `Intermediate operations` are used to perform actions on stream data and return another stream as output.
- `Terminal operations` produce the result of the stream after all the intermediate operations are applied.

Basically we pass input to the stream and apply zero or more intermediate operations to manipulate the data and finally, the result can be collected using a terminal operation.

``` java
Stream.of(1, 2, 3, 4, 5)          	// Stream source
    .filter(x -> x % 2 == 0)      	// Intermediate operation
    .collect(Collectors.toList()) 	// Terminal operation
```

```java
public class Main{
    public static void main(String[] args) {
        int[] arrayToConverted = {104, 58, 86, 85, 45};
        Integer[] resultArray = Arrays.stream(arrayToConverted)
                .boxed()
                .toArray(Integer[]::new);
        System.out.println(arrayToConverted.getClass());
        System.out.println(resultArray.getClass());
        System.out.println(Arrays.toString(resultArray));
        System.out.println(Arrays.toString(arrayToConverted));

    }
}
```
read more [here](https://data-flair.training/blogs/collection-framework-in-java/)

## Generic

- `T` - Type (Used in Map)
- `E` - Element(Used extensively by the Java Collections Framework)
- `K` - Key (Used in Map)
- `N` - Number
- `V` - Value (Used in Map)
- `S`,`U`,`V` - 2nd, 3rd, 4th types

### Generic Class

Syntax of Generic Class

``` java
class GenericClass<T> {...}
```

### Generic Method

Syntax of Generic Method

``` java
public <T> void genericMethod(T data) {...}
```

### Example

``` java
package com.tutorial.test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class Shoe {}
class IPhone{}

interface Fruit {}

class Apple implements Fruit{}
class Banana implements Fruit{}
class GrannySmith extends Apple{}

class FruitHelper {

    public void eatAll(Collection<? extends Fruit> fruits) {}

    public void addApple(Collection<? super Apple> apples) {}
}

public class Main {
    public static void main(String[] args) {
        FruitHelper fruitHelper = new FruitHelper() ;
        List<Fruit> fruits = new ArrayList<>();

        fruits.add(new Apple()); // Allowed, as Apple is a Fruit
        fruits.add(new Banana()); // Allowed, as Banana is a Fruit
        fruitHelper.addApple(fruits); // Allowed, as "Fruit super Apple"
        fruitHelper.eatAll(fruits); // Allowed

        Collection<Banana> bananas = new ArrayList<>();
        bananas.add(new Banana()); // Allowed
//        fruitHelper.addApple(bananas); // Compile error: may only contain Bananas!
        fruitHelper.eatAll(bananas); // Allowed, as all Bananas are Fruits

        Collection<Apple> apples = new ArrayList<>();
        fruitHelper.addApple(apples); // Allowed
        apples.add(new GrannySmith()); // Allowed, as this is an Apple
        fruitHelper.eatAll(apples); // Allowed, as all Apples are Fruits.

        Collection<GrannySmith> grannySmithApples = new ArrayList<>();
//        fruitHelper.addApple(grannySmithApples); //Compile error: Not allowed.
        // GrannySmith is not a supertype of Apple
        apples.add(new GrannySmith()); //Still allowed, GrannySmith is an Apple
        fruitHelper.eatAll(grannySmithApples);//Still allowed, GrannySmith is a Fruit

        Collection<Object> objects = new ArrayList<>();
        fruitHelper.addApple(objects); // Allowed, as Object super Apple
        objects.add(new Shoe()); // Not a fruit
        objects.add(new IPhone()); // Not a fruit
        //fruitHelper.eatAll(objects); // Compile error: may contain a Shoe, too!
    }
}
```

## Reader/Writer

## Multithreading
- Java runtime environment runs as a single process which contains different classes and programs as processes.
- Java provides two ways to create a thread programmatically:
  	- Implementing the __java.lang.Runnable__ interface
  	- Extending the __java.lang.Thread__ class

### Implementing Runnable interface
To make a class runnable, we can implement java.lang.Runnable interface and provide implementation in `public void run()` method. To use this class as Thread, we need to created a Thread object by passing object of this runnable class and then call `start()` method to execute the `run()` method in a separate thread.

### Extending Thread class
We can extend __java.lang.Thread__ class to create our own java thread class and override `run()` method. Then we can create it's object and call `start()` method
to execute our custom Java thread class run method.

### Runnable vs Thread
If your class provides more functionality rather than just running as Thread, you should implement Runnable interface to provide a way to run it as Thread. If your class only goal is to run as Thread, you can extend Thread class. Implementing Runnable is preferred because Java supports implementing multiple interfaces. If you extend Thread class, you can't extend any other classes.


## References
- [Where can we initialize the final instance variables?](https://medium.com/@hjwasim/where-can-we-initialize-the-final-instance-variables-2192f2753b11)
- [Mastering the final Keyword in Java: Constants, Immutability, and More](https://dev.to/arshisaxena26/mastering-the-final-keyword-in-java-constants-immutability-and-more-34kj)
- [Static , This , Super , Final keywords in Java](https://medium.com/@20pa1a0594/static-this-super-final-keywords-in-java-1ef55fc4aa62)
- [A Guide to Object-Oriented Programming in Java](https://medium.com/@AlexanderObregon/a-guide-to-object-oriented-programming-in-java-89dc4544837f)
- [Start Here](https://www.baeldung.com/start-here)
- [Java Developer Roadmap](https://dev.to/rameshfadatare/java-developer-road-map-2022-3mg5)
- [Mooc.fi Java Course](https://java-programming.mooc.fi/)
- [Learn Java](https://dev.java/learn/)
- [Core Java Tutorial with Examples](https://java2blog.com/core-java-tutorial-for-beginners-experienced/)
- [Introduction to Java](https://www.koderhq.com/tutorial/java/)
- [Java Programming Cheatsheet](https://javatechonline.com/static-keyword-in-java/)
- [Learn Java Programming](https://www.programiz.com/java-programming)
- [Learn Java Online](https://www.learnjavaonline.org/)
- [Java Tutorial](https://javabeginnerstutorial.com/core-java-tutorial/)
- [Learn Java Programming with Examples](https://beginnersbook.com/java-tutorial-for-beginners-with-examples/)
- [Core Java Tutorial](https://www.journaldev.com/7153/core-java-tutorial)
- [Execution Process of Java Program in Detail](https://simplesnippets.tech/execution-process-of-java-program-in-detail-working-of-just-it-time-compiler-jit-in-detail/)
- [The Definitive Guide to Java Backend Developer Career Path](https://www.devoxify.com/posts/the-definitive-guide-to-java-backend-developer-career-path/)
- [Java Programming](http://www.btechsmartclass.com/java/java-index.html)
- [Java Tutorial](https://howtodoinjava.com/java/basics/java-tutorial/#6-learning-java)
- [Java Programming Library](https://www.programiz.com/java-programming/library)
- [Access modifier](https://www.scientecheasy.com/2020/06/access-modifiers-in-java.html/)
- [Point to remember about constructor in Java class](https://www.benchresources.net/java-constructor-with-example/)
- [Why using "this" keyword to get superclass methods](https://stackoverflow.com/questions/16062867/why-using-this-keyword-to-get-superclass-methods)
