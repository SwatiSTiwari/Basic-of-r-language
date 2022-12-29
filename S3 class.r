#==============================  s3 classs ========================================

> student1<-list(sid=1,sname="swati",marks=88,class="TYFS")
> student
  rno  names percentage
1   1  swati         90
2   2 varsha         92
3   3  pooja         95
4   4 vishal         98
5   5 shweta         89
> student1
$sid
[1] 1

$sname
[1] "swati"

$marks
[1] 88

$class
[1] "TYFS"

> class(student1)="stud"
> print.stud=function(x){
+ cat("rollno",x$sid,"\n")
+ cat("studentname: ",x$sname,"\n")
+ cat("marks:",x$marks,"\n")
+ cat("classname:",x$class,"\n")
+ }
> print(student1)
rollno 1 
studentname:  swati 
marks: 88 
classname: TYFS 
> 
> 
> createObj=function(rnao,name,per,div){
+ obj=list(sid=rnao,sname=name,marks=per,class-div)
+ attr(obj,"class")
+ ="stud"

> createObj=function(rnao,name,per,div){
+ obj=list(sid=rnao,sname=name,marks=per,class-div)
+ attr(obj,"class")="stud"
+ obj
+ }
> student2=createObj(29,"Swati",90,"TYFS")

> createObj=function(rnao,name,per,div){
+ obj=list(sid=rnao,sname=name,marks=per,class=div)
+ attr(obj,"class")="stud"
+ obj
+ }
> student2=createObj(29,"Swati",90,"TYFS")
> print(student2)
rollno 29 
studentname:  Swati 
marks: 90 
classname: TYFS 
> 
> 
> 
> 
> 
> ################### inheritence #########################
> 

> student3<-list(sid=10,sname="aniket",marks=94,class="TYFS")
> class(student3)
[1] "list"
> class(student3)=c("chStud","stud")
> print(student3)
rollno 10 
studentname:  aniket 
marks: 94 
classname: TYFS 
> 
> 
> 
> 
> print.chStud=function(y){
+ cat("stud",y$sname,"is studing in",y$class,"class" ,"\n")
+ }
> print(student3)
stud aniket is studing in TYFS class 
> 
