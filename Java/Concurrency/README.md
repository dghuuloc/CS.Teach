# <p align="center"> Java Concurrency <p/>
---
### Introduction to Concurrency
Concurrency allows multiple tasks to run simultaneously, improving application performance and responsiveness. Java provides robust support for concurrency through its threading model, enabling developers to execute tasks in parallel, manage shared resources, and handle synchronization.

Key concepts:
* **Thread:** A thread is the smallest unit of execution in a program.
  When you run a Java application, it automatically starts a main thread that executes the `main()` method. You can think of a thread as a **path of execution** that carries out a specific task.
* **Concurrency:** Running multiple threads simultaneously, either on a single CPU (via time-slicing) or multiple CPU cores.
* **Thread Safety:** Ensuring shared resources are accessed safely by multiple threads.



### Creating Threads in Java
Java offers two primary ways to create threads: **extending the Thread class** or **implementing the Runnable interface**.

### Creating Threads in Java
Java offers two primary ways to create threads: **extending the Thread class** or **implementing the Runnable interface**.

#### Extending the Thread Class
You can create a thread by extending the Thread class and overriding its `run()` method.

```java
class MyThread extends Thread {
    @Override
    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println(Thread.currentThread().getName() + " printing: " + i);
            try {
                Thread.sleep(500); // Simulate work with a delay
            } catch (InterruptedException e) {
                System.out.println("Thread interrupted: " + e.getMessage());
            }
        }
    }
}

public class ThreadExample {
    public static void main(String[] args) {
        MyThread thread1 = new MyThread();
        MyThread thread2 = new MyThread();
        thread1.start(); // Start the first thread
        thread2.start(); // Start the second thread
    }
}
```
##### Explanation:
* The MyThread class extends Thread and defines the task in the run() method.
* The start() method initiates the thread, invoking run() in a separate execution path.
* Output shows interleaved execution of thread1 and thread2, demonstrating concurrent behavior.

#### Implementing the Runnable Interface
The Runnable interface is preferred when you want to separate the task from the thread management or extend another class.

The `Runnable` interface is used to define a task that can be executed by a thread, without directly managing the thread itself. It's especially useful when your class already extends another class, since Java doesn't support multiple inheritance. By implementing `Runnable`, you keep task logic separate from thread creation, promoting cleaner and more flexible code design.

```java
class MyRunnable implements Runnable {
    @Override
    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println(Thread.currentThread().getName() + " printing: " + i);
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                System.out.println("Thread interrupted: " + e.getMessage());
            }
        }
    }
}

public class RunnableExample {
    public static void main(String[] args) {
        Thread thread1 = new Thread(new MyRunnable());
        Thread thread2 = new Thread(new MyRunnable());
        thread1.start();
        thread2.start();
    }
}
```
##### Explanation:
* MyRunnable implements Runnable and defines the task in run().
* Thread object is created with the Runnable instance and started.
* This approach promotes better code reuse and flexibility.

##### Thread Lifecycle

A thread in Java goes through several states:
* **New:** Created but not started.
* **Runnable:** Ready to run or running.
* **Blocked/Waiting:** Waiting for a resource or monitor lock.
* **Timed Waiting:** Waiting for a specified time (e.g., via sleep() or wait(timeout)).
* **Terminated:** Completed execution or stopped.
Understanding the lifecycle helps manage threads effectively, especially when coordinating tasks.
 
### References
- [Java Concurrency Tutorial — From Basics to Advanced](https://solutionsarchitecture.medium.com/java-concurrency-tutorial-from-basics-to-advanced-89f3f6d1a9b9)
- [Java Multithreading and Concurrency Best Practices](https://medium.com/@AlexanderObregon/java-multithreading-and-concurrency-best-practices-39c86602e666)
- [Java Concurrency — Part 1: Creating Threads, Controlling Execution, and Thread Lifecycle](https://medium.com/@syed.fawzul.azim/java-concurrency-part-1-creating-threads-controlling-execution-and-thread-lifecycle-94ee183492b8)
- [Understanding Structured Concurrency in Java (New preview feature in Java 21)](https://codefarm0.medium.com/understanding-structured-concurrency-in-java-new-preview-feature-in-java-21-0b3f3943eab8)
- [Advanced Java Concurrency: Patterns and Best Practices](https://medium.com/@ShantKhayalian/advanced-java-concurrency-patterns-and-best-practices-6cc071b5d96c)
- [Concurrency and parallelism in Java in a nutshell](https://medium.com/@japleen.kaur11/concurrency-and-parallelism-in-java-in-a-nutshell-0bb8fc9bcfa8)
- [Java Concurrency 101: Understanding Multithreading Fundamentals](https://dip-mazumder.medium.com/java-concurrency-101-understanding-multithreading-fundamentals-e5ed48b04ca5)
- [Concurrent Programming in Java: Simplifying Complex Tasks](https://medium.com/@AlexanderObregon/concurrent-programming-in-java-simplifying-complex-tasks-d7adab6d25c6)
- [Java Concurrency: Advanced Features](https://www.j-labs.pl/en/tech-blog/java-concurrency-advanced-features/)
- [Java Concurrency (part 1): Thread](https://viblo.asia/p/java-concurrency-phan-1-thread-GAWVpevY405)
- [List Mastering Java Concurrency](https://medium.com/@junfeng0828/list/mastering-java-concurrency-and-multithreading-0b92c92f397b)
