

## These functions cache the inverse of a matrix so that it does not have
## to be calculated repeatedly




## This function creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL
    x <- matrix(1:4,2,2)
    mset <- function(y) {
        x <<- y
        m <<- NULL
    }
    
}




## This function computes the inverse of the matrix object returned 
## by makeCachematrix above


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmean()
    if (!is.null(m)) {
        return(m)    
        
    }
    data <- x$get()    
    m <- Solve(data)
    
    m
    
}
