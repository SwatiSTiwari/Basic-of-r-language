####################### array in R ####################


> new_array<-c(1:15)
> new_array
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
> ###### more than one dimension array ###########

> multiArray<-array(new_array,dim=c(3,3,2))
> multiArray
, , 1

     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

, , 2

     [,1] [,2] [,3]
[1,]   10   13    1
[2,]   11   14    2
[3,]   12   15    3

> ########## Accessing element of array ###########
> new_array<-(1:15)
> multiArray<-array(new_array,dim=c(3,3,2)) 
> multiArray[2,2,1] # it will give the value of 1st matrix of 2nd column and 2nd row
[1] 5 


> ########## check the ietm exist or not ############
> new_array<-c(1:15)
> multiArray<-array(new_array,dim=c(3,3,2))
> 5%in%multiArray
[1] TRUE


> ########### length of array ##############
> new_array<-(1:15)
> multiArray<-array(new_array,dim=c(3,3,2))
> length(multiArray)
[1] 18

########### naming of array #############

> row_names<-c("r1","r2","r3")
> col_names<-c("c1","c2","c3")
> matrix_names<-c("m1","m2")
> multiArray<-array(new_array,dim=c(3,3,2),dimnames=list(row_names,col_names,matrix_names))
> multiArray
, , m1

   c1 c2 c3
r1  1  4  7
r2  2  5  8
r3  3  6  9

 , ,m2

   c1 c2 c3
r2  10 13  1
r2 11 14  2
r3 12 15  3


######### adding element in array #########
> new_array<-c(1:15)
> new_array<-c(new_array,16)
> print("array after modification")
[1] "array after modification"
> print(new_array)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16


> ######### removing the element #############
> new_array<-c(1:16)
> new_array<-new_array[new_array!=5]
> print(new_array)
 [1]  1  2  3  4  6  7  8  9 10 11 12 13 14 15 16
> ######## remove sequence of element  #########

> remove<-c(3,2,2)
> print(multiArray)
, , m1

   c1 c2 c3
r   1  4  7
r2  2  5  8
r3  3  6  9

, , m2

   c1 c2 c3
r  10 13  1
r2 11 14  2
r3 12 15  3

>  print(multiArray%in%remove)
 [1] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[15] FALSE FALSE  TRUE  TRUE

##### Write R function to create 2 dimensional 4x3 Array of sequence of even integers greater than 40.

> new_array<-array(seq(from=40,length.out=12,by=2),c(4,3))
> print("4x3 array of sequence of even integers greater than 40")
[1] "4x3 array of sequence of even integers greater than 40"
> print(new_array)
     [,1] [,2] [,3]
[1,]   40   48   56
[2,]   42   50   58
[3,]   44   52   60
[4,]   46   54   62
