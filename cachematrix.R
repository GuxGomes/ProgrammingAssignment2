## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
      x <<- y
      x <<- NULL
    }
    get <- function() x
    setinvertion <- function(solve) s <<- solve
    getinvertion <- function() s
    list(set = set, get = get, setinvertion = setinvertion, getinvertion = getinvertion)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        # do the invertion of the matrix
        inv <- x$getinvertion()
        
        # check the existence of the matrix
        if(!is.null(inv)) {
              message("getting cached data")
              return(inv)
        }
        # otherwise, get the inverse of the matrix
        data <- x$get()
        inv <- solve(data, ...)
        # set the inverse of the matrix
        x$setinvertion(inv)
        inv
}
