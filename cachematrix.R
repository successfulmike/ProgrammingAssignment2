## Put comments here that give an overall description of what your
## functions does


## Write a short comment describing this function
##The first function below will create a matrix object and cache it's inverse
makeCacheMatrix <- function(x = matrix()) {
    var1 <- NULL
    set <- function(a) {
        x <<- a
        var1 <- NULL
    }
    get <- function() x
    setinv <- function(solve) var1 <<- solve
    getinv <- function() var1
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function
##The second function will retrieve the inverse of the matrix from above function or
##compute it within 'that' environment
cacheSolve <- function(x, ...) {
    var1 <- x$getinv()
    if(!is.null(var1)) {
        print("this is the cached solve")
        return(var1)
    }
    ans <- x$get()
    var <- solve(ans, ...)
    x$setinv(var1)
    ## Return a matrix that is the inverse of 'x'    
    var1
}
