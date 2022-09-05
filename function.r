> #=========================================== functio in R ===================================================

> new_function<-function() {
+ print("hello world") }
> new_function()
[1] "hello world"
> 
#######################  passing argument #######################
> new_function<-function( number ){ 
+ paste(number ," is even number") }
> new_function(2)
[1] "2  is even number"
> new_function(12)
[1] "12  is even number"


> ######################## we can pass number of argument ####################
> new_function<-function( number1,number2 ) {
+ paste("addition of number is ",number1+number2) }
> new_function(10,20)
[1] "addition of number is  30"
> 

> ####################### default argument #######################
> new_function<-function( number=5) {
+ paste("number is ",number) }
> new_function(2)
[1] "number is  2"
> new_function()
[1] "number is  5"


> ################## returning a value ######################
> new_function<-function(num1) {
+ return(2*num1)
+ }
> print (new_function)
function(num1) {
return(2*num1)
}
> new_function(3)
[1] 6
> new_function(6)
[1] 12
> 
