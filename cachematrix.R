## The makecachematrix function basically takes the matrix stores it. It also stores the inverse of the matrix.It does the cache job
## The cachesolve matrix takes the input matrix , generates the inverse and returns it to the functions in makecachematrix function

## it has 4 functions performing different operations such as assigning and storing the matrix and it inverse

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


## this function checks if there is a inverse of amatrix(input) present in the cache If present, returns that inverse else calculates the inverse

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
