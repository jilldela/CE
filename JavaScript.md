# JavaScript

## JavaScript & DOM Fundamentals

**DOM (Document Object Model)** - a model in which the document or web page contains objects (elements, links, etc.) that can be manipulated

* **var, let, const** - used to declare variables
  * `var` - least specific; can be redeclared
  * `let` - can be updated
  * `const` - can't be reassigned

* **Builtin methods & Standard Data Types**
  * Objects
  * Arrays
  * Strings
  * Numbers

* **ES6**
  * Arrow functions
  * rest/spread operator
  * default parameters
  * **destructuring** - extracting values from objects or arrays and assigning them to named variables

* **Closures**
  * How does the function scope behave?

* **Callbacks** - function used by another function to signal when there is a result ready

* **Promises** - a way to deal with with future values
  * When a function returns a promise, you can attach a callback using `.then()` to run after the promise resolves passing in the value of the resolved promise to the callback function
  * i.e. `someFunction().then(val => console.log(val))`

* **Functions & Pure Functions**
  * NB: learn about pure functions to get a handle on functional programming.

* **Functional Programming Basics**
  * Functional programming produces programs by composing mathematical functions, avoiding shared state & mutable data.

* **Partial Application & Curry**

* **AJAX & Server API Calls**
  * NB: know how to communicate with APIs

* **Classes**

* **Generators**

* **async/await**

* **Node & Express**



## JavaScript Questions

### Can you name two programming paradigms important for JavaScript app developers?

**paradigm** - a typical example or pattern of something

* **Prototypal Inheritance** - instances inherit directly from other objects
* **Functional Programming (FP)** - process of building software by composing **pure functions, avoiding shared state, mutable data, and side effects**

### What are the different scopes available in JavaScript?

* **In JavaScript, scope is the set of variables, objects, and functions that you have access to.**
* JavaScript has **function scope--the scope changes inside functions**
* **local variables**--variables declared within a function
  * can only be accessed within the function
  * created when function starts and deleted when function is completed
* **global variables**--variables declared outside of functions
  * have **global scope**--all scripts and functions on a web page can access it

### What are some key differences between ES5 and ES6?
* Arrow functions in ES6
* Classes in ES6
* Modules in ES6
* `let` and `const` in ES6
* Promises in ES6
* Destructuring assignment in ES6
* Default parameters in ES6
* Template literals in ES6
* Multi-line strings in ES6
* Enhanced Object literals in ES6