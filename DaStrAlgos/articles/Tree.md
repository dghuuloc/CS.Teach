# <p align="center"> Tree </p>
---

## Tree Terminologies
### Node
### Edge
### Root
###
### Height of a node
The height of a node is the *maximum number of edges* that we must cross down to reach the *furthest leaf node* from the current node. In other words, The height of a node is the number of edges present in the longest path connecting that node to a leaf node.

### Depth of a node
The depth of a node is the number of edges we must cross up to reach the root node from the current node. In other words, The depth of a node is the number of edges present in path from the root node of a tree to that node.
### Degree of a tree

## Types of tree in Data Structure
**1. Binary Tree**
A binary tree is a tree in which each node can have at most two children: a left child and a right child. Binary trees are widely used and serve as the foundation for many other tree-based data structures.
  * **Full Binary Tree:** Every node has either 0 or 2 children
  * **Complete Binary Tree:** All levels, except possibly the last, are fully filled, and all nodes are as far left as possible.
  * **Perfect Binary Tree:** All internal nodes have exactly two children, and all leaf nodes are at the same level.
  * **Balanced Binary Tree:** The height of the left and right subtrees of any node differ by at most one.

**2. Binary Search Tree (BST)**
A binary search tree is a binary tree where each node’s left child contains values less than the node, and the right child contains values greater than the node. This property makes BSTs efficient for searching, insertion, and deletion operations.

**3. AVL Tree**
An AVL tree is a self-balancing binary search tree where the balance factor (the height difference between left and right subtrees) of every node is limited to one. This ensures that the tree remains balanced, leading to efficient operations.

**4. Red-Black Tree**
A red-black tree is another self-balancing binary search tree that maintains balance using a set of rules. It ensures that the tree remains approximately balanced, making operations like insertion and deletion efficient.

**5. Heap**
A heap is a specialized tree-based data structure that satisfies the heap property. There are two common types of heaps: min-heap and max-heap. In a min-heap, the parent node’s value is smaller than or equal to its children, while in a max-heap, the parent node’s value is greater than or equal to its children. Heaps are often used for priority queue implementations.

**6. Trie (Prefix Tree)**
A trie is a tree-like data structure used for storing a dynamic set of strings, such as a dictionary or autocomplete suggestions. It’s particularly efficient for searching and inserting strings.

**5.B-Tree**
A self-balancing tree data structure commonly used in databases and file systems. It maintains sorted data and allows searches, sequential access, insertions, and deletions in logarithmic time

## Properties of Binary Tree
* The maximum number of nodes at level L of a binary tree is 2L
* The maximum number of nodes in a binary tree of height H is 2H – 1
* Total number of leaf nodes in a binary tree = total number of nodes with 2 children + 1
* In a Binary Tree with N nodes, the minimum possible height or the minimum number of levels is Log2(N+1)
* A Binary Tree with L leaves has at least | Log2L |+ 1 levels

## Practical Uses of Tree Traversal
Each traversal method serves its purpose:
* **In-Order Traversal (left, root, right)** is commonly used in binary search trees, where it retrieves data in sorted order.
  ```
       7
     / \
    1   9
   / \   \
  0   5   8

  in-order traversal would give us 0, 1, 5, 7, 9, 8
  ```

  ```
  FUNC inorderTraversal(Node node) AS	//(left, root, right)
  	IF node = null THEN
  		RETURN
  	END-IF
  	
  	stack <- empty stack
  	WHILE stack.isEmpty() OR node != null DO
  		IF node != null THEN
  			stack.push(node)
  			node <- node.left
  		ELSE
  			node <- stack.pop()
  			PRINT node.data
  			node <- node.right
  		END-IF
  	END-WHILE	
  END-FUNC
  ```
  
* **Pre-Order Traversal (root, left, right)** is useful for copying a tree structure. It’s also used when you want to visit parents before children (for example, when evaluating an expression tree).
  ```
      7
     / \
    1   9
   / \   \
  0   5   8

  pre-order traversal would give us 7, 1, 0, 5, 9, 8
  ```
  ```
  FUNC preorderTraversal(Node node) AS	//(root, left, right)
  	IF node = null THEN
  		RETURN
  	END-IF
  	
  	stack <- empty stack
  	stack.push(node)
  	WHILE stack.isEmpty() DO
  		node <- node.pop()
  		PRINT node.data
  		IF node.right != null THEN
  			stack.push(node.right)
  		END-IF
  		IF node.left != null THEN
  			stack.push(node.left)
  		END-IF
  	END-WHILE	
  END-FUNC
  ```
* **Post-Order Traversal (left, right, root)** is used to delete a tree. It’s also handy when evaluating postfix expressions in a tree.
  ```
      7
     / \
    1   9
   / \   \
  0   5   8

  post-order traversal would give us 0, 5, 1, 8, 9, 7
  ```
  ```
  FUNC postorderTraversal(Node node) AS	//(root, left, right)
  	IF node = null THEN
  		RETURN
  	END-IF
  	
  	stack <- empty stack
  	lastVisitedNode <- null
  	WHILE stack.isEmpty() OR node != null DO
  		IF node != null THEN
  			stack.push(node)
  			node <- node.left
  		ELSE
  			node <- stack.peek()
  			IF node.right != null AND lastVisitedNode != node.right THEN
  				node <- node.right
  			ELSE
  				PRINT node.data
  				lastVisitedNode <- stack.pop()
  				node <- node.right
  			END-IF
  
  		END-IF
  		
  	END-WHILE
  END-FUNC
  ```
* **Level-Order Traversal** (also known as Breadth-First Traversal) is ideal for scenarios where you need to visit all nodes at the same depth before moving to the next level. It’s used in search algorithms like BFS (Breadth-First Search).
    ```
      7
     / \
    1   9
   / \   \
  0   5   8

  level-order traversal would result in 7, 1, 9, 0, 5, 8
  ```

* The most common implementation of BFS in a binary tree uses a queue to explore each level one at a time. Here’s how the algorithm works:
  * 1. **Start** at the root of the tree.
  * 2. **Enqueue** the root node.
  * 3. While the queue is not empty: **Dequeue** a node. **Process** the node (e.g., print or collect its value). **Enqueue** its left and right children (if they exist).
  * 4. Repeat until all nodes are processed.

   ```
   FUNC levelorderTraversal(Node node) AS
  	IF node = null THEN
  		RETURN
  	END-IF
  	queue <- empty queue
  	queue.enqueue(node)
  	WHILE !queue.isEmpty() DO
  		node <- queue.dequeue()
  		PRINT node.data
  		IF node.left != null THEN
  			queue.enqueue(node.left)
  		END-IF
  		IF node.right != null THEN
  			queue.enqueue(node.right)
  		END-IF
  	END-WHILE
   END-FUNC
   ```
## Reference
* [Tree Traversal in Java](https://medium.com/@Roshan-jha/a-comprehensive-guide-to-binary-tree-traversal-in-java-74c86ee23725)
* [Introduction to Trees in Java — A Brief Beginner’s Overview](https://medium.com/@AlexanderObregon/introduction-to-trees-in-java-a-beginners-guide-95254cea8008)
* [DSA series, Part 1: Essential Structures in Java](https://medium.com/@codecrafter.info/adt-series-1-essential-data-structures-in-java-7587c7a5fe5)
* [Postorder Tree Traversal without recursion in Java](https://prepinsta.com/java-program/postorder-tree-traversal-without-recursion/)
* [How to implement Post Order Traversal of Binary Tree in Java](https://javarevisited.blogspot.com/2016/10/post-order-binary-tree-traversal-in-java-iteration-recursion.html#)
* [Balanced Binary Tree in Data Structure](https://medium.com/@amit25173/balanced-binary-tree-in-data-structure-4910d6bce0a4)
* [Balanced Binary Trees: Ensuring Equilibrium in Data Structures](https://medium.com/@amit25173/balanced-binary-tree-in-data-structure-4910d6bce0a4)
* [Building a Binary Search Tree from scratch](https://avinashselvam.medium.com/building-a-binary-search-tree-from-scratch-c73af9cf537d)
* [Graph Traversals in Java DFS & BFS](https://siddosamith.medium.com/graph-traversals-in-java-dfs-bfs-a91910f6b9f9)
