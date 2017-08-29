# Glossary

#### Abstract Data Type (ADT)
* high-level description of a structure and an API (specific set of methods)

#### ACID
* **Atomicity, Consistency, Isolation, Durability**
* set of properties of a database intended to guarantee validity even in the event of errors, power failures, etc.
* **Atomicity**
  * each transaction is "all or nothing"; if one part fails, the whole transaction fails
* **Consistency**
  * any transaction will bring the DB from one valid state to another
  * Any data written to the database must be valid according to all defined rules, including constraints, cascades, triggers, and any combination thereof. 
* **Isolation**
  * concurrent execution of transactions results in a system state that would be obtained as if the transactions were executed sequentially
* **Durability**
  * once a transaction has been committed, it will remain permanently

#### Agile
* way of work that allows product creators to easily adjust to stakeholder and user needs
* allows team members to to collaborate to decide on the most effective and efficient ways to complete work while making sure that the end users receive what they want and need. **focus on people and interactions not processes and tools**
* methodology based on the following values and principles:
  * individuals and interactions over processes and tools
  * working software over comprehensive documentation
  * customer collaboration over contract negotiation
  * responding to change over following a plan
* 

#### Amortized Time
* while worst case (O(n)) happens every once in a while, it won't happen again for so long that the cost is "amortized"

#### API
* Application Programming Interface
* set of requirements that govern how one application can talk to another
* allows for applications to share data and take actions by limiting outside program access to a specific set of features (without requiring developers to share all of the software's code)

#### Asynchronous Programming
* engine runs in an event loop
* parallel programming in which a unit of work runs separately from the main thread and notifies the thread upon completion, failure, or progress

#### AVL Tree
* Georgy Adelson-Velsky and Landis' tree, named after the inventors
* self-balancing binary search tree
* the heights of the two child subtrees of any node differ by at most one
  * if at any time the difference is greater than one, rebalancing is done to restore this property

#### BFS
* **Breadth-First Search**
* layer by layer from left to right
* implemented using a queue

#### Big O
* the language and metric used to describe the efficiency of algorithms

#### Binary Trees
* data structure composed of nodes--a root with up to two children, left and right
* why trees?
  * to store information in a hierarchy

#### Binding
* capture environment (variables, methods, this/self, etc.) that are in-scope at the current point of a program and make them available in another context
* encapsulate all of the in-scope variables and methods, storing them in an object, so that the current context can be passed around and used in another context

#### Caching
* key-value pairing
* when an application request a piece of information, it first checks the cache.
  * if the cache does not contain the key, it will then look up the data in the data store
* whhen you cache, 
  * you might cache a query and its results directly
  * you can cache the specific object
* typically sits between application layer and data store
* cache can deliver rapid results

#### CDN
* Content Delivery Network
* system of distributed servers and their data centers that deliver pages and other web content based on geographic location of the user 
* used to distribute service spatially relative to end-users to provide high availability and high performance

#### Class Inheritance
* instances inherit from classes and create sub-class relationships
* Class inheritance creates parent/child object taxonomies as a side-effect.

#### Closure
* A function enclosed in another function with reference to outer variables
* Why is it useful?
  * to enable data privacy
    * closures store their outer variables by reference, not by value
    * the enclosed variables are only in scope within the containing (outer) function

#### Cookies
* client information stored on the server that persists even if the user navigates to a different site, or closes the tab or browser.
* consists of a name, value, and other optional attributes
* Cookies are added to the client's browser by putting them into the response

#### CSRF
* **Cross-Site Request Forgery**
* attack that causesa user's web browser to perform an unwanted action
* occurs when a malicious web site, email, blog, instant message makes a target system perform a function via the target's browser without target user's knowledge

#### Denormalization (Database)
* adding redundant information into a database to speed up reads
  * e.g. database describing projects and tasks (project has many tasks)
    * get project and task information
      * store the project name within the task table (without using a joins)

#### Database Schema
* description of the organization of your database into tables and columns and datatypes

#### DFS
* **Depth-First Search**
* straight to leaf node then back up
* implement using recursion 

#### DSL
* **Domain Specific Language**

#### Dynamic Programming (DP)
* method for solving a complex problem **by breaking it down into a collection of simpler subproblems, solving each of those subproblems just once and storing their values**

#### Dynamically Typed
* do not need to specify data type when declaring methods or variables
* Ruby is dynamically typed

#### Etag
* Etag HTTP response header is an identifier for a specific version of a resource
* allows caches to be more efficient and saves bandwidth (web server does not need to send full response if the content has not changed)

#### Function Composition
* the process of combining two or more functions in order to produce a new function or perform a computation.

#### Functional Design
* assures that each modular part of a device has only one responsibility and performs that responsibility with the minimum of side effects on other parts
* each function serves single purpose

#### Functional Programming (FP)
* process of building software by composing **pure functions, avoiding shared state, mutable data, and side effects**

#### Hash Function
* sequence of mathematical operations that deterministically maps any arbitrary data into a pre-defined range of values
* produces the same value given the same input

#### Immutability
* cannot be modified after creation

#### Linked List
* **sequence of nodes** in which each node holds the value/data for the node and a pointer/reference to the next node in the list. Connections can be uni-directional (singly linked list) with reference to only the next node or bi-directional (doubly linked list) with reference to both previous and next nodes.

#### Load Balancer
* device that acts as a reverse proxy
* distributes load evenly across a network of servers
* increases capacity and reliability of applications

#### Memoization
* optimization technique used to speed up programs **by storing results of expensive function calls & returning the cached results when the same inputs occur again**

#### Monolithic Application
* single-tiered software application in which the user interface and data access code are combined into a single program from a single platform
* self-contained and independent from other computing applications

#### Mutability
* can be modified after creation

#### MVC
* **Model-View-Controller**
* architectural paradigm -- way to structure application
* used by most frameworks

#### OAuth
* authentication protocol that allows you to approve one application interacting with another on your behalf **without giving away your password**
* allows for granular permission levels

#### Object-Oriented Programming (OOP)
* program in which the **data type of a data structure and its functions are defined**
* organized around object rather than functions and data rather than logic

#### O(log n)
* runtime where the number of elements in the problem space gets halved each time

#### ORM
* **Object Relational Mapping**
* system that translates between SQL and Ruby (or Java, Lisp, etc...) objects

#### Pass By Reference
* When a function takes a reference to the original object and will act on the object

#### Pass By Value
* When a function takes an argument, it makes a copy of the argument and does not mutate the original

#### Procedural Programming

#### Programming Paradigms 
* ways of thinking about software construction based on some fundamental, defining principles

#### Prototypal Inheritance
* Objects inherit directly from other objects

#### Pure Function
* a function which **given the same inputs, always returns the same output and has no side-effects**

#### Radix Sort
* Runtime O(kn)
* sorting algorith for integers (and some other data types) that takes advatage of the fact that integers have a finite number of bits
* iterate through each digit of the number, grouping numbers by each digit
* sort each of these groupings by the next digit
* repeat sorting process by each subsequent digit until the whole array is sorted

### RAM
* **Random Access Memory**

### RDBMS
* **Relational Database Management Systems**
* way to organize data and their relationships, persisting that data and querying that data
* data organized in tables

### REST
* **Representational State Transfer**
* architectural style for describing hypermedia systems and state information
* six constraints:
  * uniform interface
    * all components must interact through single uniform interface
    * REST is optimized for web which mainly uses HTTP
      * HTTP methods mainly used are GET, POST, PUT, DELETE
  * stateless
    * all state must be kept on the client side
    * each request must declare state
    * server must be able to understand the client request without using any server context or server session state
  * cacheable
    * constraints may be declared in response as cacheable or non-cacheable
    * cacheable data may be reused as the response for the subsequent request
  * client-server
    * distinct separation of concerns


#### Router
* matches requested paths to the appropriate controller, instantiate the route's controller, and run the appropriate action/method within the controller

#### Scrum
1. product owner creates a **product backlog**--prioritized wish list
2. during sprint planning, the team pulls a small chunk from the top of the wish list, a sprint backlog, and decides how to implement those pieces
3. the team has a certain amount of time (**sprint**--usually 2-4 weeks) to complete the work. meet each day to assess its progress (daily Scrum)
4. ScrumMaster keeps team focused on goal
5. at the end of the sprint, the work should be potentially shippable
6. sprint ends with a sprint review and retrospective
7. team chooses another chunk of product backlog and repeats starting at step 1.

#### Set
* data type that can store unordered unique items
* won't store duplicates

#### Side Effects
* any application state change that is observable outside the function being called other than its return value
* i.e. modification of external variable or object property; triggering external process; console log; writing to screen, file, or network

#### Sharding (or Partitioning for DBs)
* splitting the data across multiple machins while ensuring you have a way of figuring out which data is on on which machine
  * **Vertical partitioning**--partition by feature
  * **Key-based/Hash-based**--uses some part of the data

#### Shared State
* any variable, object, or memory space that exists in a shared scope, or as the property of an object being passed between scopes

#### SOA
* **Service-Oriented Architecture**
* set of components which can be invoked, and whose interface descriptions can be published and discovered
* style of software design where services are provided to the other components by application components through a communication protocol over a network
* how to compose an application by integration of distributed, separately-maintained and deployed software components
* the policies, practices, and frameworks by which we ensure the right services are provided and consumed.

#### SQL
* **Structured Query Language**
* domain-specific language designed to query data out of relational databases


#### SSL
* Secure Sockets Layer
* standard security technology for establishing an encrypted link between a web server and a browser
* ensures all data passed between the web server and browsers remain private and integral

#### Synchronous
* Code is executed sequentially from top to bottom

#### TCP
* **Transmission Control Protocol**
* protocol that defines how to establish and maintain a network connection for exchanging data between sending and receiving computers

#### Topological Sort
* used on **Directed Acyclic Graph (DAG)**
* **linear ordering of vertices** such that for every directed edge (u, v) vertex u comes before v in the ordering