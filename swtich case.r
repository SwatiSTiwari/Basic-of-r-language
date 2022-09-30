 
 #================== simple calculator using swtich case =======================
 > add <- function(x, y) {
+   return(x + y)
+ }
> subtract <- function(x, y) {
+   return(x - y)
+ }
> multiply <- function(x, y) {
+   return(x * y)
+ }
> divide <- function(x, y) {
+   return(x / y)
+ }
> print("Select operation.")
[1] "Select operation."
> print("1.Add")
[1] "1.Add"
> print("2.Subtract")
[1] "2.Subtract"
> print("3.Multiply")
[1] "3.Multiply"
> print("4.Divide")
[1] "4.Divide"
> choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
Enter choice[1/2/3/4]: 1
> num1 = as.integer(readline(prompt="Enter first number: "))
Enter first number: 10
> num2 = as.integer(readline(prompt="Enter second number: "))
Enter second number: 20
> operator <- switch(choice,"+","-","*","/")
> result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))
> print(paste(num1, operator, num2, "=", result))

########### Output ##########
[1] "10 + 20 = 30"
> 
