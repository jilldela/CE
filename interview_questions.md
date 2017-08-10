# Interview Questions

## What are two programming paradigms of Ruby?
* Imperative
* Declarative

## What is HTTPS and how is it different from HTTP?
#### HTTP stands for Hyper Text Transfer Protocol
  * protocol which data is sent between browser and web server
  * all information is sent through plain text
#### HTTPS is the secure version of HTTP
  * the data/communications between the browser and web server are encrypted
  * used to protect highly confidential online transactions (i.e. online banking, online shopping)
#### Benefits of HTTPS
  * information is encrypted and cannot be intercepted
  * visitors can verify business and domain ownership
  * customer trust
#### How does HTTPS work?
  * HTTPS pages typically use the following protocols to encrypt communications:
    * **SSL (Secure Sockets Layer)**
      * standard security protocol for establishing encrypted links between a web server and browser
    * **TLS (Transport Layer Security)**
  * Both SSL and TLS use an 'asymmetric' Public Key Infrastructure (PKI) system
    * uses 2 'keys' to encrypt communicatications:
      * 'public' key - intended to be distributed to anyone that needs to be able to decrypt information that was encrypted by the private key
      * 'private' key - should only be accessible by the owner of the private key
    * anything encrypted with the public key can be decrypted by the private key & vice-versa

#### What is a HTTPS certificate?
  * issued by the website to your browser
  * this certificate contains the public key needed to begin the secure session
  * initiates 'SSL Handshake'

#### If I go to a site like gmail.com, I can login and see my email. If I close my browser and turn off my computer for a few days, the next time I turn it on and visit gmail.com, it shows my email without me having to login again. How does this work?
* when you visit a site, your browser sends a request to the site. The site's server will check your login information and then create a response, including session tokens, and send it back to your browser. Your browser will then store the session token by creating a cookie--data with information--storing the authentication information that was retrieved from the server site that you've visited. When you return to the same site later, the browser sends back the session token from the cookie to the server. The server will verify the information in the request and see that youve visited before. Sometimes the cookies will have an expiration date, which will then cause you to login again.

#### What's a hash table and how does it work? What's a collision? How does a hash table handle collisions?
* data structure that maps keys to values for efficient lookup
* when key-value pairs are being inserted into hash table, the key is hashed. When two different keys are hashed to the same exact hash code, this creates a collision. Usually in hash tables, the keys are hashed by using the modulo to determine which index to insert the pair. You could create your hash table to have linked lists within the index of the array. This way, if two different keys are hashed to the same index, you preserve both pairs rather than overwrite one.

#### Whats horizontal vs vertical scaling?
* systems can be scaled in one of two ways:
  * **vertical scaling** -- **increasing the resources** of a specific node.
    * i.e. **add additional memory** to a server to improve its ability to handle load changes
  * **horizontal scaling** -- **increasing the number** of nodes. 
    * i.e. **add addition servers** to decrease the load on any one server

#### What is MVC?
* **MVC** stands for **Model-View-Controller**
* MVC is a structural design how to transfer data between client and server
* **Model** adds, retrieves, and processes data to and from the database
  * the controller tells which model to instantiate
* **View** is what the browser displays to the user
  * controller tells which view to display
* **Controller** processes requests from the user
  * takes the info from the view and processes GET/POST/PUT/DELETE requests
  * instantiates the appropriate model based off the request to get information from the DB
  * gives information back to the view to display to the user