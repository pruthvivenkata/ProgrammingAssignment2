## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m=NULL
 set = function(y){
     x<<-y
     m<<-NULL
     }
 get=function() x
 setinvr=function(invr) m<<-invr
 getinvr=function() m
 list(set=set, get=get, setinvr=setinvr,getinvr=getinvr)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
m=x$getinvr()
 if(!is.null(m)){
   message("getting cached data")
   return(m)
 }
 data=x$get()
 m=solve(data,...)
 x$setinvr(m)
 m

        ## Return a matrix that is the inverse of 'x'
}
