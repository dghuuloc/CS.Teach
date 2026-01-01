# <p aling="center"> How Java Works: The Workflow </p>
---

The Java workflow involves two major stages:
1. **Compile time:** Source code (`.java`) is converted into bytecode (`.class`)
2. **Runtime:** The JVM loades and executes the bytecode on the specific machine

### What Happends at Compile Time (The Compiler)
The compilation process converts human-readable Java code into intermediate machine-independent code.

* **Input:** The programmer writes code in a `.java` file
* **The Compiler (`javac`):** The Java Development Kit (JDK) contains a compiler called `javac`
* **Process:**
  * **Syntax Checking:** The compiler checks the code for errors
  * **Translation:** If no errors exist, it translates the code into **Java Bytecode**
* **Output:** The result is a `.class` file
* **Error Detection:** If the compiler finds errors, it refuses to generate the `.class` file and lists the errors

### What Happends at Running Time (The JVM)
When you run a Java program, the Java Runtime Environment (JRE) initiates the JVM to process the `.class` file

* **Class Loader:** The JVM uses a class loader to load all necessary `.class` files into memory
* **Bytecode Verifier** This security mechanism checks the bytecode to ensure it does not violate access restrictions or cause system instability
* **Execution Engine:** This core component runs the bytecode using two methods:
  * **Interpreter:** Reads an executes bytecode instructions line-by-line. This is fast to start but slower over time
  * **JIT Compiler (Just-In-Time):** To boots performance, the JIT compiler compiles frequently used bytecode ("hotspots") into native machine code. Once compiled, this native code runs directly on the hardware, speeding up execution
* **Garbage Collector:** The JVM automatically manages memory by removing objects that are no longer in use, preventing memry leaks

### Key Components
* **JDK (Java Development Kit):** Used to _develop_ and compile Java apps (includes JRE + tools like `javac`)
* **JRE (Java Runtime Enviroment):** Used to _run_ Java apps (includes JVM + libraries)
* **JVM (Java Virtual Machine):** The engine that executes the bytecode.
