mean(z)
traceback()
##traceback is useful for communicating with email, example above is a  first line example
##you must call traceback after most recent error, executing the following function if no error will not traceback
lm(y~x)
traceback()
##error occurred because y eval to x, and y does not exist
debug(lm)
lm(y~x)
##will create a browser, the work space is a function environment
## keep entering n until error occurs, in this case y does not exist
options(error=recover)
read.csv("nosuchfile")
##generates a menu as the function call stack (similar to traceback)
## read.csv is a wrapper for read.table
## press a number and browse the environment of that function