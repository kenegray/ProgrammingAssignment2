## Put comments here that give an overall description of what your
## functions do
#make a matrix and store its inverse.

## Write a short comment describing this function
#this will has 3 functions set (sets the inverse matrix vector to NULL, setinverse which will solve for 'x', getinverse which will display the cached inverse,get which gets 'x')

makeCacheMatrix <- function(x = matrix()) {
  
  imx<-NULL
  set<- function(y) {
    x<<- y
    imx<<-NULL
  }
  get<-function()x
  setinverse<-function(solve) imx <<-solve
  getinverse<-function() imx
  list(set=set,setinverse=setinverse,getinverse=getinverse )

}


## Write a short comment describing this function
#this funciton with set the funcitons imx with the value of the environment's imx. if imx is not null it will print message and return with the value of imx.  it will then continue with solving for x and then setting imx with the new value and then show the new imx value. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  imx<-x$getinverse()
  if(!is.null(imx)){
    message("getting cached data")
    return(imx)
  }
  
  data<-x$get()
  imx<-solve(data, ...)
  x$setinverse(imx)
  imx
}
