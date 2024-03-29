## Programming assignment2
## https://github.com/rdpeng/ProgrammingAssignment2
#
# cd /c/Users/matznerni/Documents/R/coursera/coursera02_rprog03-prog
# git init
# git remote add origin https://github.com/nilsmatzner/ProgrammingAssignment2.git
# 

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

## Write two functions

# makeCacheMatrix <- function() {}


# cacheSolve <- function() {}


# I
# made
# some
# changes