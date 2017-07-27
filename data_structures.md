# Data Structures

## Linear Data Structures

### Array
* stores homogeneous elements at contiguous locations
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
* **Search time: O(n)**
* **Insertion time: O(1)**

### Stack
* **LIFO** last in first out


## Binary Tree
* a sequence of nodes in which there are a root node, left node, and right node.