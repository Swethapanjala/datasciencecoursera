
## Making a cache matrix

makeCacheMatrix <- function(x = matrix()) { 
- 
+	inverse <- NULL 
+	set <- function(y) {  
+		x <<- y  
+		m <<- NULL  
+	}  
+	get <- function() x  
+	setinverse <- function(i) inverse <- i 
+	getinverse <- function() inverse  
+	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
 } 

## SHA-1  Making a cache solve funtion

cacheSolve <- function(x, ...) {  
         ## Return a matrix that is the inverse of 'x'  
         ## Return a matrix that is the inverse of 'x'  
+        inverse <- x$getinverse()  
+        if(!is.null(inverse)) {  
+        	message("getting cached inverse")  
+        	return(inverse)  
+        }  
+        data <- x$get()  
+        inverse <- solve(data, ...)  
+        x$setinverse(inverse)  
+        inverse  
 }  
 } 
