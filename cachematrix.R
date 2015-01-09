## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



cacheSolve <- function(x=matrix(), ...) {
      m<-x$getmatrix()
      if(!is.null(m)){
            message("getting cached data")
            return(m)
      }
      matrix<-x$get()
      m<-solve(matrix, ...)
      x$setmatrix(m)
      m
}