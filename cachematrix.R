## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function get the inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        inverse.matrix <- function(solve) m <<- solve
        get.inverse.matrix <- function() m
        list(set = set, get = get, inverse.matrix = inverse.matrix,
             get.inverse.matrix = get.inverse.matrix)
}


## Write a short comment describing this function
#This function gets the result of a Cached Matrix if it was not solved by the last function.

cacheSolve <- function(x, ...) {
        m <- x$get.inverse.matrix()
        if(!is.null(m)){
                message("getting chaded data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$inverse.matrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
