## Put comments here that give an overall description of what your
## functions do

#solve(x) is the built-in function to solve invertible matrices 
#for input x = matrix() ==> matrix(c(1,2,3,4), nrow = 2, ncol = 2 )
## Write a short comment describing this function

#the function creates a list that 
# sets the value of the matrix 
# gets the value of the matrix 
# sets the value of the inverse matrix 
# gets the value of the inverse matrix 

makeCacheMatrix <- function(x = matrix()) {
  m <-NULL 
  set<-function(y) {
    x<<-y 
    m<<-NULL 
  }
  get<-function() x #returns the original matrix 
  setinverse <-function(inverse) m<<- inverse 
  getinverse <-function() m #gets the inverse 
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
  

}


## Write a short comment describing this function
#computes the inverse of x if it has not been previously computed, 
#else it retrieves the previously cached inverse of the matrix. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <-x$get()
  m<-solve(data, ... )
  x$setinverse(m)
  m
}
