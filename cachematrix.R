## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inver=NULL
set=function(y){
    x<<-y}
get=function(){x}

setInver=function(inverse){inver<<-inverse}
getInver=function(){inver}
list(set=set,get=get,setInver=setInver,getInver=getInver)
    
    
    
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inver=x$getInver()
if (!is.null(inver))
{print("cached number got")
    return(inver)
    
    }
    else{inver=solve(x$get(),...)
    x$setInver(inver)
    return(inver)
    }
    
    
    }
