#=============================== s4 class ===============================================

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

>
> ######## Changing value #############

> slot(s1,"rno")
[1] 11
> slot(s1,"rno")<-12

> slot(s1,"rno")
[1] 12
> 
> 
> 
> 
> 
> setClass("stud2",slots=list(marks="numeric",div="character"),contains="stud")
> 

> setClass("stud4",slots=list(marks="numeric",div="character"),contains="stud3")
>  s2<-new("stud2",rno=33,sname="ramehs",marks=50,div="TYSS")
# >  s2<-new("stud4",rno=33,sname="ramehs",marks=50,div="TYSS")
# > print(s2)

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
