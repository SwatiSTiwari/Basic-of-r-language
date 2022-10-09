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
> 

