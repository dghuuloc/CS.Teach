# <p align="center">Understanding Inversion of Control and Dependency Injection in Spring Framework</p>
---

## What is Dependency Inversion Principle (DIP)?
Robert C. Martin’s definition of the Dependency Inversion Principle consists of two parts:
1. High-level modules should not depend on low-level modules. Both should depend on abstractions.
2. Abstractions should not depend on details. Details should depend on abstractions.

## What is Inversion of Control (IoC)?
In a typical application, whether it is a web application or a desktop application, the primary goal is to deliver data to clients. This data is often stored in a database, which can be either SQL or NoSQL. The challenge lies in how to efficiently transfer this data from the database to the client.

## The Role of Layers in Applications
To facilitate this data transfer, applications are structured into multiple layers. For instance, in a Java application, we often create:
- __Controllers__: These handle client requests.
- __Services__: These contain the business logic.
- __Repositories__: These interact with the database.

## The Problem of Object Creation
In Java, everything is object-oriented, meaning that to use a service within a controller, we must create an instance of that service. This involves using the `new` keyword, which can lead to a cumbersome process of managing object creation and lifecycle. As applications grow, this can become increasingly difficult to manage.

## What is Dependency Injection (DI)?
While IoC is a principle, Dependency Injection is a concrete implementation of this principle. DI allows for the automatic injection of dependencies into classes, thereby simplifying the management of object creation.

### How Dependency Injection Works in Spring
In the Spring Framework, DI is implemented in such a way that when a class requires an object, it can simply request it from the Spring container. For example, if a controller needs a service object, it does not create it directly. Instead, it asks Spring to inject the service object.

### Techniques for Dependency Injection
There are three primary techniques for achieving Dependency Injection in Spring:

1. __Constructor Injection__: The service reference is passed through the constructor of the controller class.
2. __Setter Injection__: The service reference is set through setter methods in the controller class.
3. __Field Injection__: The service reference is directly injected into the fields of the controller class.

While field injection is convenient, it is generally not recommended due to potential issues with testing and loose coupling. Constructor and setter injections are preferred as they promote better design practices.

