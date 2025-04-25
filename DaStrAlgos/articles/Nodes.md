# <p align="center">Nodes Explained</p>
---

## Node in a Linked List
### Singly Linked List
In a singly linked list, each node contains data and a reference (or link) to the next node in the sequence
```java
public class Node<T> {
  private T data;
  Node<T> next;

  public Node(T data) {
    this.data = data;
  }
}
```
#### >>> Here:
* **data** stores the value of the node.
* **next** is a reference to the next node in the list.
  
### Doubly Linked List
A doubly linked list is similar to a singly linked list, but each node contains references to both the next and the previous nodes, allowing traversal in both directions
```java
public class Node<T> {
  private T data;
  Node<T> next;
  Node<T> prev;

  public Node(T data) {
    this.data = data;
  }
}
```
#### >>> Here:
* **data** stores the value of the node.
* **next** is a reference to the next node in the list.
* **prev** reference allows navigation backward, enhancing the flexibility of the linked list.

## Node in a Binary Tree
A binary tree is a hierarchical data structure in which each node has at most two children, referred to as the left child and the right child. Nodes in a binary tree are structured as follows:
```java
public class Node<T> {
  private T data;
  Node<T> leftNode;
  Node<T> rightNode;

  public Node(T data) {
    this.data = data;
  }
}
```
#### >>> Here:
* **data** holds the node's value
* **leftNode** is a reference to the left child node.
* **rightNode** is a reference to the right child node.

## Node in a Graph
In graph theory, a node is often referred to as a vertex. Each node in a graph can connect to multiple nodes, known as neighbors. A node in a graph might look like this
```java
import java.util.*;
public class Node<T> {
  private T data;
  private List<GraphNode> neighbors;

  public Node(T data) {
    this.data = data;
    this.neighbors = new ArrayList<>();
  }

  public void addNeighbor(Node neighbor) {
    this.neighbors.add(neighbor);
  }
}
```
#### >>> Here:
* **data** holds the value of the node
* **neighbors** is a list of adjacent nodes (vertices)
