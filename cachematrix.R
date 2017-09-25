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

## Making a cache solve funtion

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
