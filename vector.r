> ####################### Vector in R #######################

> color<-c("red","green","black","yellow")
> color
[1] "red"    "green"  "black"  "yellow"

> ###### Check the type of vector ########
> typeof(color)
[1] "character"

> ###### concatenation of vector ########
> vector1<-c(1,2,3,4)
> vector2<-c(5,6,7,8)
> vector3<-c(vector1,vector2)
> vector3
[1] 1 2 3 4 5 6 7 8
> 
> ######## vector value in sequence #########
> newVector<-10:20
> newVector
 [1] 10 11 12 13 14 15 16 17 18 19 20
> 
> ######### length of the vector##############
> length(newVector)
[1] 11
> 
> ########## vector logical value #############
> logicalVector<-c(TRUE,FALSE ,NA)
> logicalVector
[1]  TRUE FALSE    NA
> 
> 
> ############ sorting in vector ###############
> num<-c(50,30,10,20,40)
> color<-c("red","green","black","yellow")
> sort(num)
[1] 10 20 30 40 50
> sort(color)
[1] "black"  "green"  "red"    "yellow"
> 
> 
> ########### access of vector element ############
> num<-c(50,30,10,20,40)
> num[2]
[1] 30
> ###### accessing multiple element in vector #####
> color<-c("red","green","black","yellow")
>num<-c(50,30,10,20,40)
> num[c(1,4)]
[1] 50 20
> color[c(1,4)]
[1] "red"    "yellow"
> 
> ############## changing the value to the item ##############
> color<-c("red","green","black","yellow")
> color[2]<-"blue"
> color
[1] "red"    "blue"   "black"  "yellow"
> 
> ################ repeating the vector ###############
> repeatVector<-rep(c("a","b","c","d"),each=2) ### it will repeat each item by 2
> repeatVector
[1] "a" "a" "b" "b" "c" "c" "d" "d"

> repeatVector<-rep(c("a","b","c","d"),times=5)
> repeatVector
 [1] "a" "b" "c" "d" "a" "b" "c" "d" "a" "b" "c" "d" "a" "b" "c" "d" "a" "b" "c" "d"
> 
> 
> vector<-seq(from=10,to=50,by=5)
> vector
[1] 10 15 20 25 30 35 40 45 50
> 
