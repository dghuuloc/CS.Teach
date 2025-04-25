# <p align="center">Java Best Practices That Every Java Developer Should Know</p>
---

## 1. Using Naming Conventions
Here are some general naming rules:
- `Class` and `Interface` names should be nouns, starting with an uppercase letter. For example: `Student`, `Car`, `Rectangle`, `Painter`, etc.  
- `Variable` names should be nouns, starting with a lowercase letter. For example: `number`, `counter`, `birthday`, `gender`, etc.  
- `Methods` names should be verbs, starting with a lowercase letter. For example: `run`, `start`, `stop`, `execute`, etc.  
- `Constant` names should have all UPPERCASE letters and words are separated by underscores. For example: `MAX_SIZE`, `MIN_WIDTH`, `MIN_HEIGHT`, etc.  
- Using casing name notation for names. For example: `StudentManager`, `CarController`, `numberOfStudents`, `runAnalysis`, etc

**Choosing the Right casing Style (`camelCase`, `PascalCase`, `snake_case`, `kebab-case`):**
* Use `CamelCase` for `class` names.
* Use `snake_case` for `variables`, `functions`, and `file` names.

## 2. Ordering Class Members by Scopes
The best practice to organize member variables of a class by their scopes from most restrictive to least restrictive. That means we should sort the members by the visibility of the access modifiers: `private`, `default (package)`, `protected`, and `public`. And each group separated by a blank line.
For example, the following members declaration looks quite messy:

```java
public class StudentManager {
    private String errorMessage;
    private int numberOfColumns;
    private int numberOfRows;
 
    float columnWidth;
    float rowHeight;
 
    protected String[] columnNames;
    protected List<Student> listStudents;
 
    public int numberOfStudents;
    public String title;
 
}
```
And the members in each group are sorted by alphabetic order. This private-first and public-last style helps us quickly locate member variables when the list grows up over times.

## 3. Class Members should be private
According to Joshua Bloch (author of Effective Java), we should minimize the accessibility of class members (fields) as inaccessible as possible. That means we should use the lowest possible access modifier (hence the `private` modifier) to protect the fields. This practice is recommended in order to enforce information hiding or encapsulation in software design.
Consider the following class whose fields are made public:

```java
public class Student {
	public String name;
	public int age;
}
```
The problem with this poor design is that anyone can change the values of the fields inappropriately. For example:

```java
Student student = new Student();
student.name = "";
student.age = 2005;
```
Of course we don’t want the name to be empty and the age to be unrealistic. So this practice encourages us to hide the fields and allow the outside code to change them the through setter methods (or mutators). Here’s an example of a better design:

```java
public class Student {

	private String name;
    private int age;
 
    public void setName(String name) {
        if (name == null || name.equals("")) {
            throw new IllegalArgumentException("Name is invalid");
        }
 
        this.name = name;
    }
 
    public void setAge(int age) {
        if (age < 1 || age > 100) {
            throw new IllegalArgumentException("Age is invalid");
        }
 
        this.age = age;
    }
}
```
As you can see, the fields `name` and `age` are declared to be private so the outside code cannot change them directly (information hiding). And we provide two setter methods `setName()` and `setAge()` which always check for valid arguments before actually updating the fields. This ensures the fields always get appropriate values.

## 4. Using Underscores in Numeric Literals
This little update from Java 7 helps us write lengthy numeric literals much more readable. Consider the following declaration:

```java
int maxUploadSize = 20_971_520;
long accountBalance = 1_000_000_000_000L;
float pi = 3.141_592_653_589F;
```
## 5. Avoid Empty Catch Blocks
It’s a very bad habit to leave catch blocks empty, as when the exception is caught by the empty catch block, the program fails in silence, which makes debugging harder. Consider the following program which calculates sum of two numbers from command-line arguments:

```java
public class Sum {
    public static void main(String[] args) {
        int a = 0;
        int b = 0;
 
        try {
            a = Integer.parseInt(args[0]);
            b = Integer.parseInt(args[1]);
 
        } catch (NumberFormatException ex) {
        }
 
        int sum = a + b;
 
        System.out.println("Sum = " + sum);
    }
}
```
Note that the catch block is empty. If we run this program by the following command line:
```
java Sum 123 456y
```
It will fail silently:
```
Sum = 123
```
It’s because the second argument 456y causes a NumberFormatException to be thrown, but there’s no handling code in the catch block so the program continues with incorrect result.
Therefore, the best practice is to avoid empty catch blocks. Generally, we should do the following things when catching an exception:
- Inform the user about the exception, e.g. tell them to re-enter inputs or show an error message. This is strongly recommended.
- Log the exception using JDK Logging or Log4J.
- Wrap and re-throw the exception under a new exception.
Depending on the nature of the program, the code for handling exception may vary. But the rule of thumb is never “eat” an exception by an empty catch block.
Here’s a better version of the program above:

```java
public class Sum {
    public static void main(String[] args) {
        int a = 0;
        int b = 0;
 
        try {
            a = Integer.parseInt(args[0]);
            b = Integer.parseInt(args[1]);
 
        } catch (NumberFormatException ex) {
            System.out.println("One of the arguments are not number." +
                               "Program exits.");
            return;
        }
 
        int sum = a + b;
 
        System.out.println("Sum = " + sum);
    }
}
```

## 6. Using StringBuilder or StringBuffer instead of String Concatenation
In Java, we use the + operator to join Strings together like this:

```java
public String createTitle(int gender, String name) {
    String title = "Dear ";
 
    if (gender == 0) {
        title += "Mr";
    } else {
        title += "Mrs";
    }
 
    return title;
}
```
This is perfectly fine since only few String objects involved. However, with code that involves in concatenating many Strings such as building a complex SQL statements or generating lengthy HTML text, the `+` operator becomes inefficient as the Java compiler creates many intermediate String objects during the concatenation process.

Therefore, the best practice recommends using `StringBuilder` or `StringBuffer` to replace the + operator for concatenating many String objects together as they modify a String without creating intermediate String objects. `StringBuilder` is a non-thread safe and `StringBuffer` is a thread-safe version.

For example, consider the following code snippet that uses the + operator to build a SQL query:

```java
String sql = "Insert Into Users (name, email, pass, address)";
sql += " values ('" + user.getName();
sql += "', '" + user.getEmail();
sql += "', '" + user.getPass();
sql += "', '" + user.getAddress();
sql += "')";
```
With `StringBuilder`, we can re-write the above code like this:

```java
StringBuilder sbSql
    = new StringBuilder("Insert Into Users (name, email, pass, address)");
 
sbSql.append(" values ('").append(user.getName());
sbSql.append("', '").append(user.getEmail());
sbSql.append("', '").append(user.getPass());
sbSql.append("', '").append(user.getAddress());
sbSql.append("')");
 
String sql = sbSql.toString();
```

## 7. Using Enums or Constant Class instead of Constant Interface
It’s a very bad idea to create an interface which is solely for declaring some constants without any methods. Here’s such an interface:

```java
public interface Color {
    public static final int RED = 0xff0000;
    public static final int BLACK = 0x000000;
    public static final int WHITE = 0xffffff;
}
```
It’s because the purpose of interfaces is for `inheritance` and `polymorphism`, not for static stuffs like that. So the best practice recommends us to use an enum instead. For example:

```java
public enum Color {
	BLACK, WHITE, RED
}
```
In case the color code does matter, we can update the enum like this:

```java
public enum Color {
 
    BLACK(0x000000),
    WHITE(0xffffff),
    RED(0xff0000);
 
    private int code;
 
    Color(int code) {
        this.code = code;
    }
 
    public int getCode() {
        return this.code;
    }
}
```
In a complex project, we can have a class which is dedicated to define constants for the application. For example:

```java
public class AppConstants {
    public static final String TITLE = "Application Name";
 
    public static final int VERSION_MAJOR = 2;
    public static final int VERSION_MINOR = 4;
 
    public static final int THREAD_POOL_SIZE = 10;
 
    public static final int MAX_DB_CONNECTIONS = 50;
 
    public static final String ERROR_DIALOG_TITLE = "Error";
    public static final String WARNING_DIALOG_TITLE = "Warning";
    public static final String INFO_DIALOG_TITLE = "Information";
}
```

## 8. Avoid Redundant Initialization (0-false-null)
It’s very unnecessary to initialize member variables to the following values: `0`, `false` and `null`. Because these values are the default initialization values of member variables in Java. For example, the following initialization in declaration is unnecessary:

```java
public class Person {
    private String name = null;
    private int age = 0;
    private boolean isGenius = false;
}
```
This is also redundant:

```java
public class Person {
    private String name;
    private int age;
    private boolean;
 
    public Person() {
        String name = null;
        int age = 0;
        boolean isGenius = false;
    }
}
```
## 9. Using Interface References to Collections
When declaring collection objects, references to the objects should be as generic as possible. This is to maximize the flexibility and protect the code from possible changes in the underlying collection implementations class. That means we should declare collection objects using their interfaces `List`, `Set`, `Map`, `Queue` and `Deque`.
For example, the following class shows a bad usage of collection references:

```java
public class CollectionsRef {
 
    private HashSet<Integer> numbers;
 
    public ArrayList<String> getList() {
 
        return new ArrayList<String>();
    }
 
    public void setNumbers(HashSet<Integer> numbers) {
        this.numbers = numbers;
    }
}
```
Look at the reference types which are collection implementation classes - this locks the code to work with only these classes `HashSet` and `ArrayList`. What if we want the method `getList()` can return a LinkedList and the method `setNumbers()` can accept a `TreeSet`?
The above class can be improved by replace the class references to interface references like this:

```java
public class CollectionsRef {
 
    private Set<Integer> numbers;
 
    public List<String> getList() {
        // can return any kind of List
        return new ArrayList<String>();
    }
 
    public void setNumbers(Set<Integer> numbers) {
        // can accept any kind of Set
        this.numbers = numbers;
    }
}
```
## 10. Avoid using for loops with indexes
Don’t use a for loop with an index (or counter) variable if you can replace it with the enhanced for loop (since Java 5) or `forEach` (since Java 8). It’s because the index variable is error-prone, as we may alter it incidentally in the loop’s body, or we may starts the index from 1 instead of 0.
Consider the following example that iterates over an array of Strings:

```java
String[] names = {"Alice", "Bob", "Carol", "David", "Eric", "Frank"};
 
for (int i = 0; i < names.length; i++) {
    doSomething(names[i]);
}
```
As you can see, the index variable i in this for loop can be altered incidentally which may cause unexpected result. We can avoid potential problems by using an enhanced for loop like this:

```java
for (String aName : names) {
    doSomething(aName);
}
```

## 11. Proper handling of Null Pointer Exceptions
Null Pointer Exceptions are very common in Java. This exception occurs in a result of an attempt to call a method on a Null Object Reference. For instance, see the line of code mentioned below

```java
int noOfEmployees = office.listEmployees().count;
```
This line is free of any error, but if either the object “office” or method” listEmployees()” is Null then the code will throw a null pointer exception. Null pointer exceptions are inevitable but for its better handling, there are some java coding best practices to follow. First, it is important to check Nulls prior execution so that they can be eliminated and alter your code to handle it well.
A corrected version of code is show below:

```java
private getListOfEmployees(File[] files) {
	if (files == null)
		throw new NullPointerException("File list can not be null");
}
```

## References
- [10 Java Core Best Practices Every Java Programmer Should Know](https://www.codejava.net/coding/10-java-core-best-practices-every-java-programmer-should-know)
- [30 Java Programming Tips and Best Practise for Beginners](https://mealwala.com/best-coding-practices-java-pdf)
- [Java Tips & Tricks](https://medium.com/javarevisited/java-tips-tricks-4b188e70e170)
- [15 Java Coding Best Practices for Beginners](https://xperti.io/blogs/java-coding-best-practices/)
- [35 Java Programming Tips And Best Practices For Beginners](https://www.freelancer.com/community/articles/35-java-programming-tips-and-best-practices-for-beginners)
- [Java Best Practices That Every Java Developer Should Know](https://stratoflow.com/java-best-practices/)
- [7 Tips to Become a Better Java Programmer](https://www.geeksforgeeks.org/how-to-become-a-good-java-programmer/)
- [Java Clean Code: How to Write It? Best Practices From Experts](https://stratoflow.com/java-clean-code/)
- [A Comprehensive Guide to Understanding Naming Conventions: Camel Case vs Pascal Case vs Kebab Case vs Snake Case](https://medium.com/@salmankhan_27014/a-comprehensive-guide-to-understanding-naming-conventions-camel-case-vs-pascal-case-vs-kebab-case-e8d3bf1e14db)
- [Naming Conventions: Four popular cases](https://dev.to/alpacaappsdev/naming-conventions-4-popular-cases-571k)
- [Java Naming Conventions: PascalCase, camelCase, and more](https://www.crsinfosolutions.com/java-naming-conventions/)
- [Snake Case vs Camel Case vs Pascal Case vs Kebab Case: What‘s the Difference?](https://www.bomberbot.com/programming/snake-case-vs-camel-case-vs-pascal-case-vs-kebab-case-whats-the-difference/)
