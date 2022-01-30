## basic lapply to return a list, regardless of class of input
x <- list(a=1:5, b=rnorm(10))
lapply(x,mean)

## longer list
x <- list(a=1:4, b=rnorm(10), c = rnorm(20,1), d=rnorm(100,5))
lapply(x,mean)

##runif w/ rng. Sequence of 1:4, creating a number of random variables for sequence 1, 2, 3, 4
##runif has other arguments, we're using default
x<-1:4
lapply (x,runif)

##using those non-default arguments
x<-1:4
lapply (x,runif, min=0, max=10)

##lapply and friends make use of anonymous functions (functions w/o names)
## 2x2 and 3x2 matrix list
x<-list(a=matrix(1:4,2,2), b=matrix(1:6,3,2))
x

##use anonymous function for extracting first column of each matrix
##call lapply on x, function giving argument of elt and call first column [blank,1]
lapply(x, function(elt) elt[,1])
