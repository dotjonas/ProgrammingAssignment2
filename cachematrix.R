
## Creates a list of functions that gets/sets values and means to a vector

makeCacheMatrix <- function(x = matrix()) {
      meanValue <- NULL                                       #Set the mean to NULL
      set <- function(y){
            x <- y                                         # '<<-' searches parent env for definition
            meanvalue <<- NULL
      }
      get <- function() x
      setmatrix <- function(solve) meanValue <<- solve
      getmatrix <- function() meanValue
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