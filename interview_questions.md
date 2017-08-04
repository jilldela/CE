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
