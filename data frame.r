# ================================= Data frame in R =================================================== #

student<-data.frame(rno=(1:5),names=c("swati","varsha","pooja","vishal","shweta"),percentage=c(90,92,95,98,89))
> print(student)
  rno  names percentage
1   1  swati         90
2   2 varsha         92
3   3  pooja         95
4   4 vishal         98
5   5 shweta         89
> ############ access element  by using 3 ways ############

> student[1] ## 1
  rno
1   1
2   2
3   3
4   4
5   5

> student[["rno"]] ## 2
[1] 1 2 3 4 5


> student$rno ## 3
[1] 1 2 3 4 5


> ############## adding  row  ######################

> new_row<-rbind(student,c(6,"mahesh",93))
> print(new_row)
  rno  names percentage
1   1  swati         90
2   2 varsha         92
3   3  pooja         95
4   4 vishal         98
5   5 shweta         89
6   6 mahesh         93

> ################## adding  column  #################

> new_column<-cbind(student,address=c("andheri","bandra","kurla","andheri","malad"))
> print(new_column)
  rno  names percentage address
1   1  swati         90 andheri
2   2 varsha         92  bandra
3   3  pooja         95   kurla
4   4 vishal         98 andheri
5   5 shweta         89   malad


> ################ remove row and column #############
> remove_data<-student[-c(2),-c(1)]
> print(remove_data)
   names percentage
1  swati         90
3  pooja         95
4 vishal         98
5 shweta         89


> #### total number of row and column ################
> 
> student<-data.frame(rno=(1:5),names=c("swati","varsha","pooja","vishal","shweta"),percentage=c(90,92,95,98,89))
> print(student)
  rno  names percentage
1   1  swati         90
2   2 varsha         92
3   3  pooja         95
4   4 vishal         98
5   5 shweta         89
> dim(student)
[1] 5 3

###############  total number of column ##########
> ncol(student)
[1] 3

###############  total number of row #############
> nrow(student)
[1] 5

##############  length of the data frame #########
> length(student)
[1] 3

#############  adding column by using $ ##########

> student$age<-c(17,18,16,19,22)
> print(student)
  rno  names percentage age
1   1  swati         90  17
2   2 varsha         92  18
3   3  pooja         95  16
4   4 vishal         98  19
5   5 shweta         89  22

> ###########  delete column #####################
> student$age<-NULL
> print(student)
  rno  names percentage
1   1  swati         90
2   2 varsha         92
3   3  pooja         95
4   4 vishal         98
5   5 shweta         89


#====== join operation on dataframe =========

