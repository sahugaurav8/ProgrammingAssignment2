cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("Fetching cached data ..")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  message("Solving real time ..")
  x$setinverse(m)
  m
}
