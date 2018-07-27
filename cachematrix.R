## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates an object to store a matrix() and potentially cache the inverse of the 
## matrix through the setInverse function.  Functionalities are implemented using a list.

## "x" matrix() object

## "get" returns the matrix object
## "set" stores the matrix internally
## `setInverse(inv) : set the inverse matrix passed in argument
## `getInverse()` : returns the inverse matrix

## returns `CacheMatrix` object


makeCacheMatrix <- function(x = matrix()) {
  matrixInverse <- NULL
  set <- function(y) {
    x <<- y
    matrixInverse <<- NULL
  }
  get <- function() x
  setInverse <- function( inv ) matrixInverse <<- inv
  getInverse <- function() matrixInverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## calculates the inverse of the matrix stored in `CacheMatrix` object created with makeCacheMatrix.
## the function checks if the inverse has already been calcuated and if so reuse the 
## inverse in cache.  Otherwise, it calculates the inverse and set the value ov matrixInverse in cache
## via setInverse()

## "z" CacheMatrix() object


## returns `CacheMatrix` object

cacheSolve <- function(z, ...) {
    ## Return a matrix that is the inverse of 'z'
    inv <- z$getInverse()
    if(!is.null(inv) ) { 
      message("getting cached data")
      return(inv)
    }
    data <- z$get()
    inv <- solve(data, ...)
    z$setInverse(inv)
    inv
}
