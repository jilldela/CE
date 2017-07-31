# Data Structures

## Linear Data Structures

### ArrayList & Dynamically Resizable Arrays
* stores homogeneous elements at contiguous locations
* automatically resizable in some languages (i.e. Ruby)
  * when the array hits capactiy, a new array with double the capacity will be created and copy all the elements over to the new array.
* fixed length/defined size when array created in other languages (i.e. Java)
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


### Binary Tree
* a sequence of nodes in which there are a root node, left node, and right node.
* trees are a type of graph

#### Why Trees?
* to store information hierarchically (i.e. folders and files)
* binary search trees somewhat efficient access/search (quicker than Linked Lists, slower than arrays)
* moderate insertion/deletion ()

#### When to use?
* manipulate hierarchical data
* easy search
* manipulate sorted lists of data
* decision making

#### Balanced vs. Unbalanced
##### Balanced Trees
* red-black trees
* AVL trees

##### Complete Binary Trees
* every level of the tree is fully filled left to right (with exception of last level being fully filled; as long as it is filled left to right!)

##### Full Binary Trees
* every node has either zero or two children (no node has only one child!)

##### Perfect Binary Trees
* binary tree that is **both full and complete**
* all leaf nodes will be at the samel level and the level has the maximum number of nodes

#### Binary Tree Traversal

##### In-Order Traversal
* left, root, right (ascending order)

``` ruby 
  def in_order_traversal(node)
    if node != nil
      in_order_traversal(node.left)
      return node
      in_order_traversal(node.right)
    end
  end

```

##### Pre-Order Traversal
* root, left, right

##### Post-Order Traversal
* left, right, root

### Binary Search Tree
* A binary search tree is a binary tree in which every node fits a specific ordering property
  * all left descendents are <= node
    * duplicates/equality may differ; clarify with interviewer for definition
  * all right descendents are > node

### Hash Table
* maps keys to values for highly efficient lookup
* useful for search in an unsorted array
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

### Heaps (Min-Heaps and Max-Heaps)
* **min-heap** is a complete binary tree where each node is **smaller** than its children
  * root is the minimum element
* **max-heap** is a complete binary tree where each node is **greater** than its children
  * root is the maximum element

#### Heaps Two Key Operations
* `insert`
  * O(log n)
  1. always insert new element at the bottom, rightmost position (to maintain complete tree property)
  2. "fix" the tree by swapping the new element with its parent, until element is in appropriate spot ("bubble up" minimum element)
* `extract_min/max`
  * O(log n)
  1. remove the minimum element and replace with the last element in the heap (bottom, rightmost element)
  2. "bubble down" swapped element -- swap with minimum child

### Set
* abstract data structure that does not have duplicates; all same data type
* not ordered
* can implement through array
* `include?` O(n)
* `insert` O(n)
* `delete` O(n)