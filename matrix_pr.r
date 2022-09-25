#========= Find row and column index of minimum and maximum value in given matrix.=============

>  new_matrix<-matrix(c(1,3,6,7,8,11,35,0,100),nrow=3,byrow=TRUE)
> 
>  print(new_matrix)
     [,1] [,2] [,3]
[1,]    1    3    6
[2,]    7    8   11
[3,]   35    0  100
> 
> 
>  print("Row and column of minimum value of the the given matrix")
[1] "Row and column of minimum value of the the given matrix"
> 
>  ans<-which(new_matrix== min(new_matrix),arr.ind=TRUE)
> print(ans)
     row col
[1,]   3   2
> 
> 
> print("Row and column of maximumu value of the the given matrix")
[1] "Row and column of maximumu value of the the given matrix"
> 
> ans<-which(new_matrix== max(new_matrix),arr.ind=TRUE)
> print(ans)
     row col
[1,]   3   3
> 
