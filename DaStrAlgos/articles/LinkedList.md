# <p align="center"> A Comprehensive Guide to LinkedList in Java </p>
---

## What is a LinkedList?
A **LinkedList** is a linear data structure where each element, called a **node**, contains a reference (or link) to the next (and/or previous) node in the sequence. Unlike arrays, linked lists do not store elements in contiguous memory locations. This allows for efficient insertions and deletions at any position in the list.

## Types of LinkedLists
### 1. Singly LinkedList
Each node contains data and a single reference to the next node. The last node’s next reference is `null`.

**Characteristics:**
* Simple structure.
* Efficient insertion and deletion at the beginning.
* Traversal is only forward.
```java
class Node<T> {
	T data;
	Node<T> next;
}
```

### 2. Doubly LinkedList
Each node contains data and two references: one to the next node and another to the previous node.

**Characteristics:**
* Allows bidirectional traversal.
* More memory consumption due to an extra reference.
* Efficient insertion and deletion from both ends.
```java
class Node<T> {
	T data;
	Node<T> next;
	Node<T> prev;
}
```

### 3. Circular LinkedList
The last node’s next reference points back to the head of the list, forming a circle. This can be applied to both singly and doubly linked lists.

**Characteristics:**
* Useful for applications that require continuous looping over the list.
* No null references in the list.

## Common Operations on LinkedList
### 1. Adding Elements
* **add(E e):** Appends the specified element to the end.
* **add(int index, E element):** Inserts the element at the specified position.
* **addFirst(E e):** Inserts the element at the beginning.
* **addLast(E e):** Inserts the element at the end.

### 2. Removing Elements
* **remove():** Removes and returns the first element.
* **remove(int index):** Removes the element at the specified position.
* **removeFirst():** Removes and returns the first element.
* **removeLast():** Removes and returns the last element.
* **clear():* Removes all elements from the list.

### 3. Accessing Elements
* **get(int index):** Returns the element at the specified position.
* **getFirst():** Returns the first element.
* **getLast():** Returns the last element

### 4. Iterating Through the List

### 5. Checking for Elements
* **contains(Object o):** Returns true if the list contains the specified element.
* **indexOf(Object o):** Returns the index of the first occurrence, or -1 if not found.
* **lastIndexOf(Object o):** Returns the index of the last occurrence, or -1 if not found.













