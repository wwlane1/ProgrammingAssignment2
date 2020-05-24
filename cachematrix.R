## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates an empty list, then sets and retrieves the value of the matrix.
## Then uses functions to set and retrieve the value of the inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(m) {
                x <<- m
                inver <<- NULL
        }
        get <- function() {
                x
        }
        setinverse <- function(inverse) {
                inver <<- inverse
        }
        getinverse <- function() {
                inver
        }
        list(set = set, get = get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## This function returns the inverse of the matrix.
## Returns the inverse if it already exists, if not, the function
## solves for the inverse and returns appropriate value
cacheSolve <- function(x, ...) {
        inver <- x$getinverse()
        if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
        dat <- x$getinverse()
        inver <- solve(dat)
        x$setinverse(inver)
        inver
}
