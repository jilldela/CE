# Data Structures

## Linear Data Structures

### Array/List & Resizable Arrays
* stores homogeneous elements at contiguous locations
* automatically resizable in some languages (i.e. Ruby)
* fixed length in other (i.e. Java)
* **Accessing time: O(1)** by indexing into array
* **Search time:** 
  * **O(n)** sequentially
  * **O(log n)** by Binary Search if array is sorted
* **Insertion time: O(n)** if element inserted in beginning of array and all elements need to be shifted
* **Deletion time: O(n)** same explanation as insertion

* Stack
* Queue

### Linked List
* A Linked List is a **sequence of nodes** in which each node holds the value/data for the node and a pointer/reference to the next node in the list. 
* **singly linked list** uni-directional with reference to only the next node
* **doubly linked list** bi-directional with references to both previous and next nodes allowing traversal in both directions
* **circular linked list** all nodes connected to form a circle; tail points to another node already in sequence; any node can be head
* **Accessing time: O(n)**
* **Search time: O(n)** must traverse from head until node found
* **Insertion time: O(1)**

### Stack
* **LIFO** last in first out
* collection of elements with two principal operations: 
  * `push`/`pop` - adds/removes elements from end only
* can be implemented using either array or linked list
* **Insertion: O(1)**
* **Deletion: O(1)**
  * Insertion and deletion are only allowed from one end
* **Access: O(n)**
* Example implementations: 
  * maintaining function calls
  * check for balanced parenthesis
  * reversal of word, undo, etc...
  * implement back functionality in web browsers

### Queue
* **FIFO** first in first out
* collection of elements with two principal operations:
  * `enqueue`/`dequeue` - add to the end, remove from the front
* can be implemented using either array or linked list
* **Insertion: O(1)**
* **Deletion: O(1)**
* **Access: O(n)**


## Binary Tree
* a sequence of nodes in which there are a root node, left node, and right node.

## Hash Table
* maps keys to values for highly efficient lookup
* implemented using array of linked lists or balanced binary search tree
* using array of linked lists:
  1. compute key's hash
  2. map hash to an index in the array [i.e. hash(key) % array.length]
  3. store/retrieve the key-value pair at that index
  * lookup is O(1) in most cases
    * O(n) if # of collisions is high
* using balanced binary search tree
  * lookup is O(log n)
  * potentially uses less space