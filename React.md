# React

**React** is a JavaScript library for building user interfaces, created by Facebook. It is based on the idea of uni-directional data flow, meaning that for each update cycle:

1. React takes inputs to components as **props** and **conditionally renders DOM updates if data has changed for specific parts of the DOM.** Updates made during this cycle can't retrigger the render until the next drawing phase

2. **Event handling phase** - after the DOM has rendered, React automatically delegates DOM events to a single event listener at the root of its DOM tree (for better performance). **You can listen for events and update data in response.**

3. Using any changes to the data, the process will repeat starting at step 1.

## Component Lifecyle

### Mounting
These methods are called **when an instance of a component is being created and inserted into the DOM**:

* `constructor()` - called before the component is mounted.
  * where to inherit any `props` passed to the component by calling `super(props)` 
  * where to initialize state
  * where to bind methods

* `render()` **required method**
  * examines `this.props` and `this.state` and **returns a single React element**
  * should:
    * not modify component state
    * returns the same result each time invoked
    * does not directly interact with the browser

* `componentWillMount()` 

* `componentDidMount()` - runs after the component output has been rendered to the DOM

### Updating
Updates are **caused by changes to props or state**. These methods are **called when a component is being re-rendered**:

* `componentWilLReceiveProps()`
* `shouldComponentUpdate()`
* `componentWillUpdate()`
* `render`
* `componentDidUpdate()`

### Unmounting
**Called when a component is being removed from the DOM**:

* `componentWillUnmount()`