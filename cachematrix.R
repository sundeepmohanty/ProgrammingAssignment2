## Put comments here that give an overall description of what your
## functions do
##The following code demonstrates how to use the `Data Science- R Programming - Programming Assignment 2` R script.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  # store a matrix
  setmatrix<-function(solve) m<<- solve
  # returns already stored matrix
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}





## Write a short comment describing this function
##The following function calculates the inverse of a "special" matrix created with makeCacheMatrix mentioned above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getmatrix()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  matrix <- x$get() 
  inv<-solve(matrix, ...)
  x$setmatrix(inv)
  inv
}


## Below are two sample methods I got from assignment question. The below are just for reference.

############################################Reference Start######################################
makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

############################################Reference End######################################
