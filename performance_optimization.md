# Performance Optimization

## Ways to Improve Performance

### DB Layer
* add index to lookup columns
* order indices to start from the most selective columns
* denormalize schema
* Use NoSQL for non-crucial data
  * NoSQL is more scalable and data model addresses large volumes of rapidly changing structured, semi-structured and unstructured data

### Application Layer
* Cache DB queries
* Use a faster server (i.e. Unicorn)
* cache rendered views
* Avoid N + 1 queries
* use background jobs for anything that doesnt need to be done immediately 
* Use multithreaded server (Puma)
* Add RAM to your server
* Use several servers and a load balancer

### Network
#### Server-side
* load third-party assets through CDN
* use servers that are close to your users
* minimize cookie sizes
* preload components

#### Client-side
* enable asset caching with Etags or remove Etags altogether