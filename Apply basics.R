##apply function often anonymous over margins of an array
##usually used for function to rows or columns of a matrix
##can be used on general arrays, such as taking avg of matricies
##not really faster than writing a loop, but it works in one line -- less typing
str(apply)
## x is an array, MARGIN is an interget vector indicating which margins should be retrained
##FUN is a function to be applied
##... is for other arguments to be passed to FUN
## example function: function(X,MARGIN,FUN,...)

## example steps below
function(X,MARGIN,FUN,...)
x<- matrix(rnorm(200),20,10)
apply(x,2,mean)
##this preserves columns but collapses rows, calculating mean
apply(x,1,sum)
##this preserves rows but collapses columns, calculating sum instead of mean

##simple operations for col/row sums and means
## rowSums rowMeans  colSums colMeans

##another example, quantiles of rows of a matrix
##probs allows us to designate the quantile
x<- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(.25,.75))

##average matrix in an array
##a set of 2x2 matricies that are stacked together
##we want the average of 2x2 matricies, which will be a 2x2 matrix
a <- array(rnorm(2*2*10), c(2,2,10))
## keeping first and second dimension, but collapsing third dimension, both will be same
apply(a, c(1,2),mean)
rowMeans(a,dims=2)

