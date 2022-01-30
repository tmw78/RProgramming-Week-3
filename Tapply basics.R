##tapply is used to apply a function over subsets of a vector
str(tapply)
function(X, INDEX, FUN = NULL, ..., simplify = TRUE)
## x is a vector
## INDEX isa  factor or a list of factors (or else coerced into factors)
## FUN isa  function to be applied
## ... contains other arguments to be passed to FUN
##simplify will simplify result, like sapply
x<-c(rnorm(10),runif(10),rnorm(10,1))
f<- gl(3,10)
##factor variable with three levels repeated ten times
f
tapply(x,f,mean)
##tapply will allow us to take the mean of each groups of numbers in X
##if you do not simplify the result, you will get back a list
tapply(x,f,mean,simplify=FALSE)
##more complicated summary stats, range below
tapply(x,f,range)
