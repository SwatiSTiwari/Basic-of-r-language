> ########## creating a list#############
> emp<-list(eid=1:3,name=c("a","b","c"))
> print(emp)
$eid
[1] 1 2 3

$name
[1] "a" "b" "c"

> ######### access specific element from the list ###########
> emp$eid
[1] 1 2 3
> emp$"name"
[1] "a" "b" "c"

> ######### we can use bracket also ##########
> emp["eid"]
$eid
[1] 1 2 3

> emp["name"]
$name
[1] "a" "b" "c"

> ############ acessing individual item ###########
> emp$name[1]
[1] "a"
> ########## adding  one column ###########
>
> ##########updating list element#########
> emp$"name"[1]<-"z"
> emp # update the a with z
$eid
[1] 1 2 3

$name
[1] "z" "b" "c"



> ########### we cannot delete the value we just assign NA(not applicable)  or NULL value ###########
> emp$eid[3]<-NA
> emp
$eid
[1]  1  2 NA

$name
[1] "z" "b" "c"



> dept<-(deptno=c("HR","manager","teacher"))
> dept
[1] "HR"      "manager" "teacher"
### adding list ######################
> empinfo<-c(emp,dept)
> empinfo
$eid
[1]  1  2 NA

$name
[1] "z" "b" "c"


[[3]]
[1] "HR"

[[4]]
[1] "manager"

[[5]]
[1] "teacher"

###### generic function #########
> is.list(emp)
[1] TRUE
> length(emp)
[1] 3
> class(emp)
[1] "list"
> str(emp)
List of 2
 $ eid : int [1:3] 1 2 NA
 $ name: chr [1:3] "z" "b" "c"
 
 ######### creating a new list ########
> newlist<-list("hello",1,"hii",2)
> newlist
[[1]]
[1] "hello"

[[2]]
[1] 1

[[3]]
[1] "hii"

[[4]]
[1] 2

> ######## add list item ###########
> append(newlist,"how are you")
[[1]]
[1] "hello"

[[2]]
[1] 1

[[3]]
[1] "hii"

[[4]]
[1] 2

[[5]]
[1] "how are you"

> ###### remove list item ###############
> newlist<-list("hello",1,"hii",2)
> removelist<-newlist[-1]
> removelist
[[1]]
[1] 1

[[2]]
[1] "hii"

[[3]]
[1] 2
