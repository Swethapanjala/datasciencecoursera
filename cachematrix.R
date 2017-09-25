
## Making a cache matrix that can cache its inverse

 ## set the value of the matrix 
makeCacheMatrix <- function(x = matrix()) { 
- 
+	inverse <- NULL 
+	set <- function(y) {  
+		x <<- y  
+		m <<- NULL  
+	}  
 ## get the value of the matrix 
+	get <- function() x  
 ## set the value of the inverse of the matrix 
+	setinverse <- function(i) inverse <- i 
 ## get the value of the inverse of the matrix 
+	getinverse <- function() inverse  
+	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
 } 

## SHA-1  Making a cachesolve funtion to return inverse of the above matrix

cacheSolve <- function(x, ...) {  
         
         ## get the value of inverse matrix
 
+        inverse <- x$getinverse()  
+        if(!is.null(inverse)) {  
+        	message("getting cached inverse")  
+        	return(inverse)  
+        }  
+        data <- x$get()  
+        inverse <- solve(data, ...)  
 ## set the value of inverse of the matrix
 ## Return a matrix that is the inverse of 'x' 
+        x$setinverse(inverse)  
+        inverse  
 }  
 } 
