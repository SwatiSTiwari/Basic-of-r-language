################################## matrix in R  ############################################


############## creating matrix ##############
>new_matrix<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
> print(new_matrix)
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9


> ########## access matrix element #############
> new_matrix<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
> new_matrix[2,3]
[1] 8

### acessing whole column ########
> new_matrix[,3]
[1] 7 8 9

> ##### access more than one column ######
> new_matrix<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
> new_matrix[,c(1,3)]
     [,1] [,2]
[1,]    1    7
[2,]    2    8
[3,]    3    9


> ######### adding column ################
> newMatrix<-cbind(new_matrix,c(10,11,12))
> print(newMatrix)
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12


> ############# adding row ################
> newMatrix<-rbind(new_matrix,c(13,14,15))
> print(newMatrix)
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
[4,]   13   14   15


> ######## removing row and column  ###########
> new_matrix<-new_matrix[-c(1),-c(2)]
> print(new_matrix)
     [,1] [,2]
[1,]    2    8
[2,]    3    9


> ##### check the item exist or not  ##########
> 7%in%new_matrix
[1] FALSE
> 8%in%new_matrix
[1] TRUE
> new_matrix<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
> dim(new_matrix)
[1] 3 3
> length(new_matrix)
[1] 9
