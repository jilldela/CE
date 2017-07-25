# Glossary

#### API
* Application Programming Interface
* set of requirements that govern how one application can talk to another
* allows for applications to share data and take actions by limiting outside program access to a specific set of features (without requiring developers to share all of the software's code)

#### Binding
* capture environment (variables, methods, this/self, etc.) that are in-scope at the current point of a program and make them available in another context
* encapsulate all of the in-scope variables and methods, storing them in an object, so that the current context can be passed around and used in another context

### CDN
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

#### Database Schema
* description of the organization of your database into tables and columns and datatypes

#### DSL
* **Domain Specific Language**

#### Dynamically Typed
* do not need to specify data type when declaring methods or variables
* Ruby is dynamically typed

#### Function Composition
* the process of combining two or more functions in order to produce a new function or perform a computation.

#### Functional Programming (FP)
* process of building software by composing **pure functions, avoiding shared state, mutable data, and side effects**

#### Immutability
* cannot be modified after creation

#### Linked List
* **sequence of nodes** in which each node holds the value/data for the node and a pointer/reference to the next node in the list. Connections can be uni-directional (singly linked list) with reference to only the next node or bi-directional (doubly linked list) with reference to both previous and next nodes.

#### Mutability
* can be modified after creation

#### OAuth
* authentication protocol that allows you to approve one application interacting with another on your behalf **without giving away your password**
* allows for granular permission levels

#### Object-Oriented Programming (OOP)
* program in which the **data type of a data structure and its functions are defined**
* organized around object rather than functions and data rather than logic

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

### RDBMS
* **Relational Database Management Systems**
* way to organize data and their relationships, persisting that data and querying that data
* data organized in tables

#### Router
* matches requested paths to the appropriate controller, instantiate the route's controller, and run the appropriate action/method within the controller

#### Side Effects
* any application state change that is observable outside the function being called other than its return value
* i.e. modification of external variable or object property; triggering external process; console log; writing to screen, file, or network

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