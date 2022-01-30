##warning
log(-1)
##Warning message:
##In log(-1) : NaNs produced

printmessage <- function(x){
        if(x>0)
                print("x is greater than zero")
        else
                print("x is less than or equal to zero")
        invisible(x)        
}
printmessage(1) ## will print out its argument (invisible hides value)
printmessage(NA) ##error message will appear

printmessage2 <-function(x) {
        if(is.na(x))
                print("x is a missing value!")
        else if(x>0)
                print("x is greater than zero")
        else
                print("x is less than or equal to zero")
        invisible(x)
}
