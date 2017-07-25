# Interview Questions

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