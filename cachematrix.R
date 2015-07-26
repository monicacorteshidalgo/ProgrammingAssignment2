## cambios
## m es matriz (y no vector)
## el nombre de las variables *mean es s??lo alcance
## solo se cambia la funcion MEAN A SOLVE

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        Set <- function(x){
            x <<- y
            m <<- NULL
        }
        get <- function() x
        setmean <- function(solve) m <<- solve
        getmean <- function() m
        list(set = set, get = get,
             setmena = setmean,
             getmean = getmean)
}

## se cambia la funcion solve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setmean(m)
        m
}
