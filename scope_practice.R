makeVector <- function(x = numeric()){
  m <- NULL
  set <- function(y) {
    print("Using set function")
    x <<- y
    m <<- NULL
  }
  get <- function() {
    print("Using get function")
    x
  }
  
    
  setmean <- function(mean){
    print("Using setmean function")
    m <<- mean
  } 
  getmean <- function() {
    print("Using getmean function")
    m
  }
  
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
  
}

cachemean <- function(x,...){
  m <- x$getmean()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data,...)
  x$setmean(m)
  m
}
  