##split takes a vector or other objects and splits it into groups determined by a factor or list of factors
##used in conjunction with lapply or sapply, similar to tapply 
##takes a vector, takes a factor variable (identifies levels of a group), splits into groups
str(split)
function(x,f,drop = FALSE,...)

## example
x<-c(rnorm(10), runif(10), rnorm(10,1))
f<- gl(3,10)
split(x,f)
                
##common to use lapply with split function
lapply(split(x,f), mean)

##split a data frame
library(datasets)
head(airquality)

##split dataframe into monthly pieces, and then calculate the column means for each month's variables
## NAs for ozone being missing values
s<- split(airquality, airquality$Month)
lapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))

##could also use sapply to get a simplified result in a matrix
sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]))
##alternatively, removing NA values
sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")],na.rm=TRUE))

##Splitting on more than one level
x<-rnorm(10) ## normal random variable 10 obs
f1<-gl(2,5) ## factor 2 levels repeated 5 times
f2<-gl(5,2) ## factor 5 levels repeated 2 times
interaction(f1,f2)

##splitting more than one level with interactions 
str(split(x, list(f1,f2)))

##empty levels can be dropped
str(split(x,list(f1,f2), drop = TRUE))
