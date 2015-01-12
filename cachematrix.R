
## Creates a list of functions that gets/sets values and means to a vector

makeCacheMatrix <- function(x = matrix()) {                 # function takes matrix x as argument
      meanVal <- NULL                                      
      set <- function(y){                                   # set assigns a value y to matrix x
            x <- y                                          
            meanVal <<- NULL                                # and makes sure all mean values are NULL
      }
      get <- function() x                                   # get either calculates inverse of matrix x or gets calculated values
      setmatrix <- function(solve) meanVal <<- solve        # calculate ivnerse meanVals
      getmatrix <- function() meanVal                       # ...or getsexisting mean values
      list(set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
}


## calculates the inverse of makeCacheMatrix

cacheSolve <- function(x=matrix(), ...) {
      m <- x$getmatrix()
      if(!is.null(m)){                    # If the inverse has already been calculated...
            message("reading data...")
            return(m)                     #...retrieve the inverse from the cache.
      }
      matrix <- x$get()                   # else, if no inverse has been calculated...
      m <- solve(matrix, ...)             # ...return inverse
      x$setmatrix(m)
      m
}