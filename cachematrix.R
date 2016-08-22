# Matrix Caching to reduce repeated computation. 

# Martix cache wrapper object
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(inv) m<<-inv
  getInv <- function() m
  list(set = set, get = get,
       setInv=setInv,
       getInv=getInv)
}


# Returns an inverted matrix through calculation or caching
cacheSolve <- function(x, ...) {
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(m)
  m
}