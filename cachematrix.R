## Creates a special matrix object that can cache its inverse
## Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly. 
## Write a pair of functions that cache the inverse of a matrix.

makeCacheMatrix <- function( x = matrix() ) {

	## Initialize the inverse property
    inv <- NULL

    ## Set the matrix
    set <- function( matrix ) {
            x <<- matrix
            inv <<- NULL
    }

    ## Get the matrix
    get <- function() {
    }

    ## Set the inverse of the matrix
    setInverse <- function(inverse) {
        inv <<- inverse
    }

    ## Get the inverse of the matrix
    getInverse <- function() inv {
    }
        
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    }

## Computes the inverse of the special matrix returned by "makeCacheMatrix" above.
## If the inverse has already been calculated, 
## then "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()

    if( !is.null(inv) ) {
            message("getting cached data")
            return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setInverse(inv)
    inv
    }
