 ##=============================== regression ==============================================

 #########  linear regression #########

> df<-data.frame(timing=c(2,3,5,6,8,9),rotation=c(3,4,6,7,8,10))
> df
  timing rotation
1      2        3
2      3        4
3      5        6
4      6        7
5      8        8
6      9       10
> predictRotation<-lm(rotation~timing,data=df)
> predictRotation

Call:
lm(formula = rotation ~ timing, data = df)

Coefficients:
(Intercept)       timing  
     1.2000       0.9333  

> x<-data.frame(timing=c(7,1,10))
> print(predict(predictRotation,x))
        1         2         3 
 7.733333  2.133333 10.533333 
> 
> 
> 
> 
> ################# multiple regration ##################

> df<-data.frame(hindi=c(98,78,67,90,45),english=c(69,55,88,94,49),marathi=c(93,39,76,59,60),total=c(260,172,231,243,154))
> df
  hindi english marathi total
1    98      69      93   260
2    78      55      39   172
3    67      88      76   231
4    90      94      59   243
5    45      49      60   154
> totalMarks<-lm(total~hindi+english+marathi,data=df)
> totalMarks

Call:
lm(formula = total ~ hindi + english + marathi, data = df)

Coefficients:
(Intercept)        hindi      english      marathi  
 -5.084e-14    1.000e+00    1.000e+00    1.000e+00  

> y<-data.frame(hindi=88,english=38,marathi=99)
> y
  hindi english marathi
1    88      38      99
> print(predict(totalMarks,y))
  1 
225 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> ### s3 classs
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
Error: unexpected '=' in:
"attr(obj,"class")
="
> createObj=function(rnao,name,per,div){
+ obj=list(sid=rnao,sname=name,marks=per,class-div)
+ attr(obj,"class")="stud"
+ obj
+ }
> student2=createObj(29,"Swati",90,"TYFS")
Error in class - div : non-numeric argument to binary operator
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
> #### inheritence
> 
> student3<-list(sid=10,sname="aniket",marks=94,class="TYFS)
+ student3<-list(sid=10,sname="aniket",marks=94,class="TYFS))
Error: unexpected symbol in:
"student3<-list(sid=10,sname="aniket",marks=94,class="TYFS)
student3<-list(sid=10,sname="aniket"
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


## s4 class

> setClass("stud",slots=list(rno="numeric",sname="character")
+ )
> s1<-new("stud",rno=11,sname="mukesh")
> getSlots("stud")
        rno       sname 
  "numeric" "character" 
> 
> 
> slotNames("stud")
[1] "rno"   "sname"
> slotNames(s1)
[1] "rno"   "sname"
> 
> 
> setMethod("print","stud",function(obj){
+ cat("rollno",obj$rno,"\n")
+ cat("name",obj$sname,"\n")
+ }
+ )
Error in conformMethod(signature, mnames, fnames, f, fdef, definition) : 
  in method for ‘print’ with signature ‘x="stud"’: formal arguments (x = "stud") omitted in the method definition cannot be in the signature
> 
> 
> 
> #### inheritence
> 
> 
> #### Change value 
> slot(s1,"rno")
[1] 11
> slot(s1,"rno")<-12
> slot
function (object, name) 
.Call(C_R_get_slot, object, name)
<bytecode: 0x000001d8feb04ab8>
<environment: namespace:methods>
> slot
function (object, name) 
.Call(C_R_get_slot, object, name)
<bytecode: 0x000001d8feb04ab8>
<environment: namespace:methods>
> print(s1)
Error in x$sid : $ operator not defined for this S4 class
> slot(s1,"rno")
[1] 12
> 
> 
> 
> 
> setClass("stud2",slots=list(marks="numeric",class="character"),contains="stud")
Error in validSlotNames(allNames(properties)) : 
  "class" is a reserved slot name and cannot be redefined
> setClass("stud2",slots=list(marks="numeric",class="character"),contains="stud")
Error in validSlotNames(allNames(properties)) : 
  "class" is a reserved slot name and cannot be redefined
> setClass("stud2",slots=list(marks="numeric",div="character"),contains="stud")
> 
> 
> 
> 
> setClass("stud2",rno=33,sname="ramehs",marks=50,div="TYSS")
Error in setClass("stud2", rno = 33, sname = "ramehs", marks = 50, div = "TYSS") : 
  unused arguments (rno = 33, sname = "ramehs", marks = 50, div = "TYSS")
> 
> s2<-new("stud2",rno=33,sname="ramehs",marks=50,div="TYSS")
> print(s2)
Error in x$sid : $ operator not defined for this S4 class
> 
> setClass("stud",slots=list(rno="numeric",sname="character")
+ setClass("stud3",slots=list(rno="numeric",sname="character")
Error: unexpected symbol in:
"setClass("stud",slots=list(rno="numeric",sname="character")
setClass"
> setClass("stud3",slots=list(rno="numeric",sname="character"))
> setClass("stud2",rno=33,sname="ramehs",marks=50,div="TYSS")
Error in setClass("stud2", rno = 33, sname = "ramehs", marks = 50, div = "TYSS") : 
  unused arguments (rno = 33, sname = "ramehs", marks = 50, div = "TYSS")
> setClass("stud2",slots=list(marks="numeric",class="character"),contains="stud")
Error in validSlotNames(allNames(properties)) : 
  "class" is a reserved slot name and cannot be redefined
> setClass("stud4",slots=list(marks="numeric",class="character"),contains="stud3")
Error in validSlotNames(allNames(properties)) : 
  "class" is a reserved slot name and cannot be redefined
> setClass("stud4",slots=list(marks="numeric",div="character"),contains="stud3")
>  s2<-new("stud2",rno=33,sname="ramehs",marks=50,div="TYSS")
>  s2<-new("stud4",rno=33,sname="ramehs",marks=50,div="TYSS")
> print(s2)
An object of class "stud4"
Slot "marks":
[1] 50

Slot "div":
[1] "TYSS"

Slot "rno":
[1] 33

Slot "sname":
[1] "ramehs"

> 
