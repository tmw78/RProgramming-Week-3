##mapply is a multivariate apply of sorts which applies a function in parallel over a set of args
str(mapply)
##FUN is a function to apply
## ... contains arguments to apply over
##MoreArgs is a list of other arguments to FUN
##SIMPLIFY indicates whether the result should be simplified
function(FUN, ..., MoreArgs = NULL, SIMPLIFY = TRUE, 
         USE.NAMES = TRUE)
##instead of using a list with a bunch of reps
mapply(rep, 1:4, 4:1)
##rep is the repeat function

##Vectorizing a function
noise<-function(n,mean,sd) {
        rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5, 1:5,2)

##instead use mapply instant vectorization
mapply(noise, 1:5, 1:5,2)
        
## this is the same as, just way simpler
list(noise(1,1,2),noise(2,2,2),noise(3,3,2),noise(4,4,2),noise(5,5,2))
