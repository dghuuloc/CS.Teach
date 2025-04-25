# <p align="center">Java Naming Conventions with Example</p>
---

##  Some common naming conventions used in programming
Among the common ones are the following:

- __Camel Case__: First letter of every word is capitalized with no spaces or symbols between words. Examples: `UserAccount`, `FedEx`, `WordPerfect`.
A variation common in programming is to start with a lower case: `iPad`, `eBay`, `fileName`, `userAccount`. Microsoft uses the term Camel Case to refer strictly to this variation.
- __Pascal Case__: Popularized by Pascal programming language, this is a subset of Camel Case where the word starts with uppercase. Thus, `UserAccount` is in Pascal Case but not `userAccount`.
- __Snake Case__: Words within phrases or compound words are separated with an underscore. Examples: `first_name`, `error_message`, `account_balance`.
- __Kebab Case__: Like Snake Case, but using hyphens instead. Examples: `first-name`, `main-section`.
- __Screaming Case__: This refers to names in uppercase. Examples: `TAXRATE`, `TAX_RATE`.
- __Hungarian Notation__: Names start with a lowercase prefix to indicate intention. Rest of the name is in Pascal Case. It comes in two variants:
	- (a) Systems Hungarian, where prefix indicates data type;
 	- (b) Apps Hungarian, where prefix indicates logical purpose.
  Examples: `strFirstName`, `arrUserNames` for Systems; `rwPosition`, `pchName` for Apps.

## 1. Java Packages Naming Conventions
Packages groups your classes. It should represent what kind of classes it is holding. They come in a hierarchy, starting with the base package name, it should have your company’s domain name in reverse order, plus your project name without any extra characters – all in lowercase letters.

   - The package name should be in a small case
   - In case there are multiple words, seperate them by a dot
   - The prefix should be one of the top-level domain names like `com`, `edu`, `gov`, `mil`, `net`, `org`, or one of the English two-letter codes identifying countries. (In, Us, Uk)
  
```java
package com.journaldev.util;
```
If the name is too long you can use underscores. You can also add the version name at the end

```java
com.coderstea.healthy;com.codertea.healthy.whats_in_a_name; //with underscores
com.codertea.healthy.v2; //versioning
org.srpingframework.*;
com.zaxxer.hikari;
```

## 2. Classes and Interfaces Naming Conversions
The class name should be a noun. Use CamelCase, but the first letter should be capitalized, like HashMap. It should tell you what kind of function and/or variable you can expect from it. It must be Specialized (explained in Interface).

```java
class ArrayList {}
class HashMap {}
class ComputerEngineer {}	/*specialized term*/
```
## 3. Java Interfaces Naming Conventions
Interface names should be an adjective. Sometimes, it can be a noun like a List or Map. Like classes, it should be in CamelCase, with the first letter capitalized. It must be Generalized, for example, ComputerEngineer. If it were to implement any interface, which one would it implement? Engineer, right? So, Engineer is the general term, but the ComputerEngineer is the specialized one.

```java
interface Student {}	/*noun*/
interface Engineer {}	/*generalized term*/
interface Account {}
interface Cloneable {}	/*adjective*/
```

## 4. Java Function or Method Naming Conventions
Who does most of the work here? Methods. They should always report to you what they are trying to do and what action they are taking. So, they should be placed in the verb category and the name should imply what they are doing. Make it 2-3 words long. Then again, use camelCase, as you did in variables. 
Usually, get and set are used to fetch and set the data to something respectively (setters and getters). For a boolean, it’s the same as variables.

```java
void print(Object obj);
void remove(Obejct obj);
Object update();int getCountOfCustomer();/*getter*/
void setCountOfCustomer(int countOfCustomers);/*setter*/
boolean isUserAdmin(User user);
```

## 5. Java Variable or Fields Naming Conventions
Variables or fields should be nouns, short, meaningful, and represent the value and usage. They should be written in camelCase. And do not start them with an underscore`(‘_’)` or dollar sign `‘$’` characters. 
Additionally, do not write one character variable. You can use one character for temporary variables in a loop or something similar. Commonly used loop characters are `i`, `j`, `k`, `m`, and `n` for integers and `c` for characters, it’s up to you; it’s only temporary. it is even better if you can attach the unit as well, `timeInDays` or `weightInKilos`. For a boolean value, make it more of a question with a yes or no answer. Generally, `‘is’` or ‘has’` is attached at the beginning. You can make numbers more readable by separating them with an underscore.

```java
int countOfCustomer;
float averageInterest;
long timeInMillisecond, daysInYear; /*with some unit */
boolean isEngineer, isCompleted, hasSubmitted; /* questions */
long moneyIWishIHad = 1_000_000_000_000;
```
- `is` prefix should be used for boolean variables and methods. For examples, `isSet`, `isVisible`, `isFinished`, `isFound`, `isOpen`.
  This is the naming convention for boolean methods and variables used by Sun for the Java core packages. Using the is prefix solves a common problem of choosing bad boolean names like status or flag. isStatus or isFlag simply doesn't fit, and the programmer is forced to chose more meaningful names.

Setter methods for boolean variables must have set prefix as in:

```java
void setFound(boolean isFound);
```
There are a few alternatives to the is prefix that fits better in some situations. These are has, can and should prefixes:

```java
bolean hasLicense();
boolean canEvaluate();
boolean shouldAbort = false;
```

- Additional, if property is defines as `Boolean`

```java
private Boolean check;

// getter method
public Boolean getCheck() {
	return check;
}

// setter method
public void setCheck(Boolean check) {
	this.check = check;
}
```
If property is defines as `boolean`

```java
private boolean check;

// getter method
public boolean isCheck() {
	return check;
}

// setter method
public void setCheck(Boolean check) {
	this.check = check;
}
```

## 6. Constants Naming Conventions
Constant is also a big part of the program. You want to make things always stay the way they are. So, the common practice is to make it appear as if they are not going to change, just like a stubborn kid, you have to make them all capital. Yep! No evading of the work here.

```java
static final float PI = 3.14;
static int CREATED_ON_YEAR = 2019;
final String CODERS_TEA_URL = "https://coderstea.in";
```

- That works fine for primitive types like int or strings:

```java
private static final int MAX_COUNT = 10;
```
- But what's about non primitive types? In most cases I've seen the following: 

```java
private static final Logger log = Logger.getLogger(MyClass.class);
```

## 7. Java Generics
There is not much to talk about generics. It is better to use a single capital character for it. Usually, T is used. If more than one V is also used, Java uses E for the list element, K and V for maps, and S for service loaders. Do not use a multi-character for it. It, then, becomes hard to detect it from another class name.

``` java
public <T> void print(T t);
interface List<E>{}
class HashMap<K, V> {};
```

## 8. Other Java Naming Conventions
There are a few other things, like enums and annotations. They are similar to classes and interfaces respectively. In enum fields, they must all be capital since they are final static by default.

```java
enum Beverage{TEA, COFFEE};
public @interface FunctionalInterface {}
public @interface Autowired{}
enum HttpResponse {Ok, NOT_FOUND}
```

## 9. A Trick to Name Something In Java
- Reveal intentions: `fileName` is better `f`; `maxPugs` is better than `pugs`.

- Make distinctions: `moneyInDollars` is better than `money`.

- Put the distinguishing aspect first: `dollarMoney` and `rupeeMoney` are better than `moneyInDollars` and `moneyInRupees`.

- Easy to pronounce: `timeStamp` is better than `ts`.

- Verbs for functions: `getName()` and `isPosted()` are good; `hasWeight()` or `isMale()` when boolean values are returned; `toDollars()` for conversions.

- One word, one concept: `fetch`, `retrieve`, get all imply the same thing: use one of them consistently.

- Relate to business context: `AddCustomer` is better than `IncrementCounter`.

- Use shortforms judiciously: `PremiumCust` may be used over `PremiumCustomer` to emphasize `"Premium"`; but `fn` is not a good substitute for `fileName`.

- Describe content rather than storage: `user_info` is better than `user_list`.

- Plurals for containers: `fruitNames` is better than `fruit` for an array of fruit names.

- Describe content rather than presentational aspects: in CSS, for example, `main-section` is better than `middle-left-and-then-a-little-lower` as identifier name.
