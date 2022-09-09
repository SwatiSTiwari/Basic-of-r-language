> ############### variables in R ##########################


> name<-"swati"
> age<-18
> country<-"india"

> print(name)
[1] "swati"

> print(age)
[1] 18

> print(country)
[1] "india"
> ####################### Concatenation ######################

> paste(name,"is",age,"years old")
[1] "swati is 18 years old"


> ################ same value to mutiple variables in one line ###########
> v1<-v2<-v3<-v4<-"hello world"
 
> print(c(v1,v2,v3,v4))
[1] "hello world" "hello world" "hello world" "hello world"

############ we can print value in new line also ##############
> v1
[1] "hello world"
> v2
[1] "hello world"
> v3
[1] "hello world"
> v4
[1] "hello world"
> ############### LEGAL VARIABLE NAME #########################
> newvar<-"welcome"
> new_var<-"welcome"
> newVar<-"welcome"
> NEWVAR<-"welcome"
> newvar1<-"welcome"
> .newvar<-"welcome"

> newvar
[1] "welcome"
> new_var
[1] "welcome"
> NEWVAR
[1] "welcome"
> newvar1
[1] "welcome"
> .newvar
[1] "welcome"
> 
> 
> ###################### DATA TYPES IN R ########################
> v1<-"Good morning"
> typeof(v1)
[1] "character"

> ################### we can use class function also ##############
> v1<-10
> class(v1)
[1] "numeric"

> v1<-10L
> typeof(v1)
[1] "integer"

> v1<-9i+7
> typeof(v1)
[1] "complex"

> v1<-TRUE
> typeof(v1)
[1] "logical"
> ################# Type Conversion in R#############
> x<-20L
> y<-20
> 
> 
> a<-as.numeric(x)
> b<-as.numeric(y)
> 
> print(a)
[1] 20
> print(b)
[1] 20
> ###############check that the type conversion is working or not ####################

> class(a)
[1] "numeric"

> class(b)
[1] "numeric"
> ###################### we can perform maths operation in R #####################
> 50+10    # addition in R
[1] 60

> 50-10    # substraction in R
[1] 40

> 50*10    # multiplication in R
[1] 500

> 50/10    # division in R
[1] 5

############### printing max value ##############
> max(10,100,1000)
[1] 1000

############### printing min value #############
> min(10,100,1000)
[1] 10

############## printing square root ###########
> sqrt(100)
[1] 10

############ printing absolute value ##########
> abs(-10)
[1] 10

