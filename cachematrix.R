## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        set_inv_matrix <- function(inverse_val) m <<-inverse_val
      	get_inv_matrix <- function() m
        list(set = set, get = get, set_inv_matrix = set_inv_matrix, get_inv_matrix = get_inv_matrix)
}


## Write a short comment describing this function
## The function will need to return a matrix that is an inverse of x

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
        m <- x$get_inv_matrix()
        if (!is.null(m)) {
        	return(m)
        } else {
        	m <- solve(x$get())
        	x$set_inv_matrix(m)
        }
## I tested this with square matrices and it was working ... not sure on non-squares ... rfu
}
        
        


