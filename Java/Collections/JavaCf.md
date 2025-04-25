# <p align="center"> Java Collection Framework<p/>
---

## Java Collection Framewoks (JCF)
### List interface

#### ArrayList vs LinkedList
* **ArrayList:**
</br>When the first element will be added it grows to the default initial collection size which is 10. 

* **LinkedList:**
</br>LinkedList in Java is a **doubly-linked list**, so they have pointers back from each element to its predecessor as well as its next element.

* In the next table there is a performance comparison between ArrayList and LinkedList for certain operations:

|	Operation |	ArrayList |	LinkedList |
| ---------- | --------- | ---------- | 
| get(int index) |	fast `O(1)` | mostly long `O(n)` |
| set(int index, E element) |	fast `O(1)` |	mostly long `O(n)` |
|	add(E element) | fast `O(1)` |	fast `O(1)` |
| add(int index, E Element) | mostly long `O(n)` |	mostly fast |
|	remove(int index) |	mostly long `O(n)` |	mostly fast |

* **When to use LinkedList and when to use ArrayList?**
  * **Insert** and **remove** operations have better performance in LinkedList compared to **ArrayList**. Hence if there is a requirement of frequent addition and deletion then LinkedList is the best choice.
  * **Search** operations are fast in **ArrayList** but slow in LinkedList. So if there are more search operations required, ArrayList is the best choice.

* **Performance Comparison**
1. Access Time:
    * ArrayList: O(1) for random access.
    * LinkedList: O(n) for random access (sequential search required).
2. Insertion/Deletion:
   * ArrayList: O(n) for insertion/deletion (requires shifting elements).
   * LinkedList: O(1) for insertion/deletion at ends, O(n) for insertion/deletion in the middle.
3. Memory Usage:
   * ArrayList: Less memory overhead.
   * LinkedList: More memory overhead due to storing references to next and previous nodes.

### Queue interface
```
| 14 | 
  |
  |                        Back/Tail/Rear                  Frontt/Head                    
  |-->     enqueue --->  | 13 || 12 || 11 || 10 || 9 || 8 || 7 || 6 |    --- dequeue
                                                                                |
                                                                                |---> | 5 |
```


### Set interface

> [!IMPORTANT]
> ***HashSet** stores elements in random order whereas **LinkedHashSet** stores elements according to insertion order and **TreeHashSet** stores according to natural ordering*

### Map interface

### Iterator interface
An iterator is an interface that iterates the elements. It is used to traverse the list and modify the elements. Iterator interface has three methods which are mentioned below:
* public boolean hasNext() — This method returns true if the iterator has more elements.
* public object next() — It returns the element and moves the cursor pointer to the next element.
* public void remove() — This method removes the last elements returned by the iterator.

## Choose the Right Java Collection
First let us look at the following flowchart. It will help you determine the collection interface to use based on the data you want to store into this collection.
```
          Start
            |
            |
Do you need key/value pair -------- values only ------------- >    Has  ----------------- yes ----------------> List
      or value only?                                           duplicates?
            |                                                       |
          pairs                                                     no
            |                                                       |
            |                                                       |      
           Map                                                     Set
```
   
### Choose the right Java Map interface
* **HashMap** – use this implementation if the order of items while iterating is not important to you. HashMap has better performance compared to TreeMap and LinkedHashMap
* **TreeMap** – is ordered and sorted but slower compared to HashMap. TreeMap has ascending order of keys, according to its Comparator
* **LinkedHashMap** – it orders items by key during insertion

### Choose the right Java List interface
* **ArrayList** – items are ordered during insertion. Search operations on ArrayLists is faster compared to search operations on LinkedLists
* **LinkedList** – has fast adding to the start of the list, and fast deletion from the interior via iteration

### Choose the right Java Set interface
* **HashSet** – use this implementation if the order of items while iterating is not important to you. HashSet has better performance compared to TreeSet and LinkedHashSet
* **LinkedHashSet** – it orders items during insertion
* **TreeSet** – has ascending order of keys, according to its Comparator

## Reference
* [LinkedList vs. ArrayList](https://hyperskill.org/learn/step/12391)
* [Java Collection Frameworks: Internal Working And Effective Uses](https://medium.com/@abu_dawud/java-collection-frameworks-internal-working-and-effective-uses-part-1-1564295624bb)
* [How to Use the Java Collections Framework – A Guide for Developers](https://www.freecodecamp.org/news/java-collections-framework-reference-guide/)
* [Why Use ArrayDeque Instead of Stack in Java](https://yevgenp.medium.com/why-use-arraydeque-instead-of-stack-in-java-02e92eb86e4c)
* [Understanding Queue Implementations in Java: Arrays, Linked Lists, ArrayLists, Stack and the Queue Interface](https://medium.com/@araj60988/understanding-queue-implementations-in-java-arrays-linked-lists-arraylists-stack-and-the-queue-300f85e35ea4)
* [Deque và ArrayDeque trong Jav](https://gpcoder.com/2767-deque-va-arraydeque-trong-java/)
* [Collections in Java](https://www.sitepoint.com/collections-in-java/)
