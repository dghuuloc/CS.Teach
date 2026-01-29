# <p align="center"> Java Concurrency <p/>
---
### Introduction to Concurrency
Concurrency allows multiple tasks to run simultaneously, improving application performance and responsiveness. Java provides robust support for concurrency through its threading model, enabling developers to execute tasks in parallel, manage shared resources, and handle synchronization.

Key concepts:
* **Thread:** A thread is the smallest unit of execution in a program.
  When you run a Java application, it automatically starts a main thread that executes the `main()` method. You can think of a thread as a **path of execution** that carries out a specific task.
* **Concurrency:** Running multiple threads simultaneously, either on a single CPU (via time-slicing) or multiple CPU cores.
* **Thread Safety:** Ensuring shared resources are accessed safely by multiple threads.

#### Threads and Processes
A **process** is a running instance of a program with its own memory space.
A **thread** lives inside a process and shares the same memory and resources with other threads in that process.
* A **process** is like a house.
* A **thread** is like a person inside the house working on something.
All threads in a process share the same environment — so they can communicate easily, but they also need to coordinate to avoid interfering with each other.

#### **Concurrency vs. Parallelism**
These two words often cause confusion, but they describe different ideas:
* **Concurrency** = multiple tasks _in progress_ (not necessarily at the same time).
* **Parallelism** = multiple tasks _running at the same time_ on multiple cores.
A single-core CPU can achieve concurrency by quickly switching between threads, while a multi-core CPU can achieve parallelism by running multiple threads truly simultaneously.

#### Race Conditions and Data Races
A **race condition** happens when two or more threads try to access and modify shared data at the same time, and the final result depends on the timing of their execution.

A **data race** is a specific type of race condition where at least one thread writes to shared data without proper synchronization.

Example idea: Two threads deposit money into the same bank account at the same time. Without coordination, one update might overwrite the other, leading to incorrect balances.

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
- [Understanding Java Threads: A Beginner’s Guide to Concurrency](https://medium.com/@thimalushara/understanding-java-threads-a-beginners-guide-to-concurrency-d6221727365b)
- [Concurrency in Java: Threads vs Executors](https://medium.com/@aayushichourasiya/concurrency-in-java-threads-vs-executors-61e9cb9acf70)
- [Java: Parallelism and concurrency a complete guide](https://pedrosilvatech.medium.com/java-parallelism-and-concurrency-a-complete-guide-d426957538aa)
- [Threads vs Reactive Programming](https://medium.com/@integrationninjas/concurrency-in-java-virtual-threads-vs-reactive-programming-38b1aff805ca)
- [Java concurrency in practice: threads](https://medium.com/@svosh2/java-concurrency-in-practice-threads-3d70664af2e2)
- [Java Multithreading: A Step-by-Step Guide for Concurrent Programming](https://aeontanvir.medium.com/java-multithreading-a-step-by-step-guide-for-concurrent-programming-3bf5dccbbfa1)
- [Handling Concurrency in Java: Tips & Tricks for Ensuring Thread Safety](https://medium.com/@alex31n/handling-concurrency-in-java-tips-tricks-for-ensuring-thread-safety-a33959d9bab3)
- [Java Concurrency Fundamentals: Working With Threads](https://medium.com/@vikas.taank_40391/java-concurrency-fundamentals-working-with-threads-b63f1b48afbe)
- [Java Concurrency Fundamentals : Java Threads](https://medium.com/@vikas.taank_40391/java-concurrency-fundamentals-java-threads-d71f13c8b970)
- [The Ultimate Guide to Java Concurrency (Threads vs Processes)](https://medium.com/@shubhranshugupta/the-ultimate-guide-to-java-concurrency-threads-vs-processes-18b57794443c)
- [Understanding Concurrency and Parallelism, with a Glance at Java Threads and Coroutines](https://medium.com/devwarlocks/understanding-concurrency-and-parallelism-with-a-glance-at-java-threads-and-coroutines-f9b4132bb433)
- [Java Threads, Part 2: Concurrency Control and Thread Safety](https://medium.com/javarevisited/java-threads-part-2-concurrency-control-and-thread-safety-c46f7da9bae2)
- [Java concurrency in practice: threads](https://medium.com/@svosh2/java-concurrency-in-practice-threads-3d70664af2e2)
- [A Comprehensive Guide to Multithreading and Concurrency in Java](https://medium.com/@lakshyachampion/a-comprehensive-guide-to-multithreading-and-concurrency-in-java-9bf8a0a0bb82)
- [Java Concurrency - Overview](https://jojozhuang.github.io/programming/java-concurrency-overview/)
- [Modern Java Concurrency Foundations: From Threads to the Executor Framework](https://blog.stackademic.com/modern-java-concurrency-foundations-from-threads-to-the-executor-framework-86859e514125)
- [Mastering Java Concurrency: Dive into Part 1! ](https://dev.to/mjsf1234/mastering-java-concurrency-dive-into-part-1-291h)
- [java-concurrency](https://vijay-vk.github.io/java-concurrency/terminology.html)
- [Concurrency Problems in Java](https://www.geeksforgeeks.org/java/concurrency-problems-in-java/)
- [The Ultimate Java Concurrency & Multithreading Roadmap (Deep, Transferable, Timeless)](https://bytebytenews.com/tech-blog/the-ultimate-java-concurrency-multithreading-roadmap-deep-transferable-timeless/)
- [Thread Concurrency vs Network Asynchronicity](https://www.coralblocks.com/index.php/thread-concurrency-vs-network-asynchronicity/)
