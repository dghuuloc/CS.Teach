# <p align="center"> Data Structure and Algorithms</p>

## Introduction to Data Structure?
The data structure is a way to store and organize data in a computer system so that we can use the data easily.

Its main operations are given below:
1. **Searching** – The process of finding an element is called searching. There are two algorithms to complete the search, the first binary search and the second linear search.
2. **Sorting** – The process of arranging the data structure in a particular order is called sorting. There are many algorithms to perform sorting, such as – insertion sort, selection sort, bubble sort, radix sort, etc.
3. **Insertion** – The process of adding elements to a location is called insertion. If the size of a data structure is n, then we can insert only n-1 elements in it.
4. **Deletion** – The process of removing an element is called deletion. We can delete data from any location we want.
5. **Traversing** – Traversing means traversing each data structure element to perform a particular task.
6. **Merging** – Joining two such lists which have the same type of data elements together is called merging. From this, we get a third list.

## Characteristics of Data Structure
1. **Linear or Nonlinear** – This is the order characteristic of the data structure. It arranges the data in a sequential form.
2. **Static or Dynamic** – This characteristic defines whether the data's format, size, and memory location remain the same or change over time.
3. **Time complexity** – By this characteristic, we can understand if any algorithm is operated on the data structure, then how much time will be required in any case? (Because the less time the system takes, the more perfect it will be identified)
4. **Correctness** – By this characteristic, we can understand how precisely the data structure is implemented in the interface.
5. **Space complexity** – This characteristic defines how carefully memory usage is maintained for a data structure.

## Two Types of Data Structures
### 1. Primitive Data Structure
Primitive data structure is a data structure that can be operated directly from machine instructions. That is, it is defined by the system and the compiler.

**>>> Example:** Integer, Character, Float, Boolean

### 2. Non-primitive Data Structure
A non-primitive data structure is a data structure that cannot be operated by direct machine instructions. These data structures are derived from primitive data structures.

**>>> Example:** Array, Linked list, Stack, Queue, etc.

There are two types of non-primitive data structures:
#### a) Linear Data Structure
The linear data structure is a data structure in which data items are stored and arranged in a linear form, with one data item connected to another as a line.

**>>> Example:** Array, Linked list, Stack, Queue, etc.

**>>> Application:** Linear data structures are mainly in application software development.

#### b) Non-linear Data Structure
The non-linear data structure is a data structure in which data items are not arranged sequentially. A data item can be associated with any number of other data items.

**>>> Example:** Tree, Graph.

**>>> Application:** Non-linear data structures are in Artificial Intelligence and image processing.

## Classification Of Data Structure at a Glance
### Array
An array is a static data structure i.e. We can allocate memory only at compile time and cannot change it at run-time.

#### 1. One-dimensional (1-D) arrays:
Arrays that contain only one subscript are called one-dimensional arrays. It is used to store data in linear form.

#### 2. Two-dimensional (2-D) arrays:
The arrays in which there are two subscripts are called two-dimensional arrays. Two-dimensional arrays are also called matrices and tables.

#### 3. Multi-dimensional (m-D) arrays:
The arrays which contain more than two subscripts are called Muti-dimensional arrays.

<p align="center"><img src="./images/array.png"/></p>

### Linked List
* A linked list is a non-primitive, linear data structure.
* A linked list is made up of a group of nodes. Each node has two parts, the first part is the data, and the second is the pointer. The linked list's pointer holds the next node's address. Nodes are used to store the data.
* A linked list is a data structure whose length can be increased or decreased at runtime. That is, it is dynamic.

**There are three types of linked list:**
* **Single linked list** – It has a one-way direction, and each node of a single linked list has two fields:
    * The first is the field where the data store resides.
    * The second is a pointer or link.
* **Doubly linked list** – It has a two-way direction. Each node of the doubly linked list consists of three parts:
    * In the first part, the data store is kept.
    * The second part is the link to the next node.
    * The third part is the link to the previous one.
* **Circular linked list** – Each node in the circular linked list is connected in the form of a circle. There are two types of circular linked lists: `Single circular linked list` and `Double circular linked list`
    * There is no NULL value at the end of the circular linked list.

In this, the last node is kept containing the address of the first node i.e. the first and last nodes are adjacent.

<p align="center"><img src="./images/linked-list.png"/></p>

### Queue
The queue is a non-primitive and linear data structure, and it works on the principle of FIFO (first in, first out) i.e. the item which is added first will be removed first, and the item which is last. It is added to it; it will be removed at the end.

__Following are the operations performed in Queue:__
- __Enqueue__ – When we add an item or element to the queue, then that operation is called enqueue.
- __Dequeue__ – When we delete an item from the queue, then that operation is called dequeue.
- __Peek__ – This operation is used to get the front element of the queue, and the element is not deleted in it.
- __isEmpty__ – This is used to check whether the queue is empty or not. When the queue is empty, it throws an underflow condition.
- __isFull__ – It is used to check whether the queue is completely full or not. When the queue is completely full then, it throws the overflow condition.

__Different types of Queue:__
- __Linear Queue__ – Insertion is done from one end, and deletion is done from the other end. The end from where the insertion is done is called the rear end, and the end from where the deletion is done is called the front end.
- __Circular Queue__ – In this, all the nodes are presented as a circle. In this, the last element is associated with the first element. It is also called a ring buffer. In the Circular Queue, the item is added from the rear end and removed from the front end.
- __Priority Queue__ – This is a special type of queue in which each element has a priority associated with it, and it works on the basis of that priority. In this, the element which has the lowest priority is removed first. If the elements have the same priority, then the elements are arranged on the basis of the FIFO principle.
- __Dequeue__ – The full form of a Dequeue is a double-ended queue. Dequeue is a data structure in which we can add and remove items from both the front and rear ends.

<p align="center"><img src="./images/queue.png"/></p>

### Stack
Stack is a special type of linear data structure that works on the principle of LIFO (last in, first out) i.e. the item added last is removed first, and the item added first is added is removed at the end.

__The following operations are performed in the stack:__
- __push__ – When the item is inserted in the stack, it is called a push operation, and if the stack is full, there is an overflow condition.
- __pop__ – When an item is deleted from the stack, then this operation is called pop operation. If the stack is empty, then an underflow condition occurs. We can say that the stack overflows when it is completely full, and we can say it underflows when it is completely empty.
- __isEmpty__ – This operation tells whether the stack is empty or not.
- __isFull__ – This operation tells whether the stack is full or not.
- __peek__ – it returns the element at the given position,
- __count__ – It returns the total number of elements present in the stack.
- __change__ – It changes the element at the given position.
- __display__ – It prints all the elements present in the stack.

<p align="center"><img src="./images/stack.png"/></p>

### Hashing
The process of generating a fixed length value or key from a set of characters is called hashing. In this process of hashing, a mathematical function is used to generate the value or key.

Or in other words, "the hash value is created by applying a hashing algorithm to the message or data."

Hashing algorithms are also called ‘hash functions’.

We can easily understand hashing with the help of the example:
_Suppose Sidhu sends a message to Simran, then the hash value for this message is generated and encrypted, and this hash value is sent along with the message. When Simran receives this message, he decrypts this message as well as the hash._

_After this, Simran generates another hash from the message; if both these hashes are the same, then only secure transmission will be possible._

<p align="center"><img src="./images/hasing.png"/></p>

### Graph
We can easily understand the data structure graph on the basis of the following points:
- __1__ – Graph is a non-primitive, non-linear data structure.
- __2__ – Graph is a group of vertices(node). One vertex is connected with another vertex, and the connection between two vertexes is called the edge. The edge acts as a communication link between two nodes.
- __3__ – Graph (V, E) is the group where V is the group of vertices and E is the group of edges.

<p align="center"><img src="./images/graph.png"/></p>

__Directed Graph and Undirected Graph:__
A graph in which the edges have a direction is called a directed graph. And such edges are called directed edges. Directed edges are also called acres. Edges in a graph are represented by a line, and if each line carries an arrow mark, then it is called a directed graph. Directed graphs are also called diagrams.

The graph does not have the direction of the edges; that is, there is no arrow mark in it. It is called an Undirected graph.

<p align="center"><img src="./images/directed-undirected-graph.png"/></p>

__Weighted and Unweighted graphs:__
Sometimes graphs have edges; they carry weight. These weights are real numbers. Both directed and undirected graphs can be weighted graphs. Graphs that do not carry weight are called unweighted graphs.

<p align="center"><img src="./images/unweighted-weighted-graph.png"/></p>

### Tree
A tree is a hierarchical data structure that stores information or data in a hierarchical manner.

#### Structure of a Tree
- A tree is a set of nodes that generally have a hierarchical relationship.
- The tree is a non-linear data structure.
- The tree has a parent-child relationship.
- We call each data item in the tree a node.
- The topmost node in the tree is called the root node.
- A node can have at most one parent. But only the root node has no parent.
- Each node in a tree can have zero or more child nodes.
- Such nodes that do not have child nodes are called leaf nodes or terminal nodes.
- Although the tree always grows upwards, the tree of the data structure always grows downwards.

<p align="center"><img src="./images/tree.png"/></p>

In the data structure, there are the following types of Tree:
- __General Tree__ – A tree in which a node can have either zero child nodes or can have many child nodes. This type of tree is called a general tree.
  
  In this, there is no restriction on child nodes. The topmost node of this tree is called the root node, and it can have many sub-trees.
  
- __Binary Tree__ – Binary means two numbers:- 0 and 1. A binary tree is a tree in which each node can have a maximum of two child nodes. In this, there is a restriction on child nodes because each node in a binary tree can have only two child nodes.
  
  The topmost node in a binary tree is called the root node and has only two sub-trees: the right and left.

- __Binary Search Tree__ – Binary search tree is a non-linear data structure in which a node is associated with many nodes. It is a binary tree based on a node.

- __AVL Tree__ – This is a type of binary tree. It is also called a self-balancing binary search tree. It has extra information, which is called the balance factor.

- __B-Tree__ – A B-tree is an M-Way (multi-way) tree specially designed for use in disks. A ‘B-tree’ is called a balanced tree.

## What are some popular algorithms I should master?
* **Sorting Algorithms:** Bubble Sort, Insertion Sort, Selection Sort, QuickSort, MergeSort, Heap Sort, Shell Sort
* **Searching Algorithms:** Linear Search, Binary Search 
* **Graph Algorithms:** BFS (Breadth-First Search), DFS (Depth-First Search), Dijkstra’s Algorithm
* **Dynamic Programming:** Knapsack Problem, Fibonacci Sequence, Longest Common Subsequence
* **Greedy Algorithms:** Activity Selection, Huffman Coding.

## Back-tracking
### Types of Backtracking Algorithm 
Backtracking algorithms are classified into two types:
* Algorithm for recursive backtracking
* Non-recursive backtracking algorithm

### DFS Backtracking (`pop`):
* In DFS, when the path being explored doesn't lead to the target, we remove the last node added (`path.pop()`).
* It actively undoes steps in the current path and tries alternatives.

### BFS Tracking (`previous`):
* BFS doesn't backtrack during the traversal. Instead, it tracks the path in the `previous` array and constructs it later after reaching the target.
* The queue ensures all paths are explored level by level, making backtracking unnecessary.

## Reference
* [A Deep dive into Data Structures(DS)](https://medium.com/@eren.mollaoglu/a-deep-dive-into-data-structures-ds-4151ce5cd9dd)
* [Data structure in JS](https://vincenguyen.hashnode.dev/data-structure-in-js)
* [Blog Category: Data Structures and Algorithms (DSA)](https://adrianmejia.com/categories/coding/data-structures-and-algorithms-dsa/)
* [7 JavaScript Data Structures you must know ](https://dev.to/nehasoni__/7-javascript-data-structures-you-must-know-57ah)
