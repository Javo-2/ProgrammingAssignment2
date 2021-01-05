## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
###This function will allow you to cache the inverse of a matrix 
###The function makeCacheMatrix will create and return a list o functions that 
### can be used by cacheSolve to get and inverted matrix in cache

makeCacheMatrix <- function(x = matrix()) {
  invert <- NULL
  set <<- function(y){
    x <<- y
    invert <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) invert <<- inverse
  getinverse <- function() invert
  list(set=set, get = get, setinverse =setinverse, getinverse =getinverse)
}
## Write a short comment describing this function
###This function calculates the inverse of the matrix created with makeCacheMatrix

   ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) { 
  invert <- x$getinverse()
  if(!is.null(invert)) {
    message("getting cached data")
    return(invert)
  }
  data <- x$get()
  invert <- solve(data,...)
  x$setinverse(invert)
  invert
}
