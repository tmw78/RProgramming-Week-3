##sapply tries to simplify results of lappy
##if the result is a list where every element is length 1, then a vector is returned
##if result is a list where every element is a vector of same length (>1,) a matrix returns
##if it cant figure out, list returns
##using code from lapply basics.R
sapply(x,mean)