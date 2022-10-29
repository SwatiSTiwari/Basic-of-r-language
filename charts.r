# Plot chart 
month<-(1:12)
> temp21<-c(19.5,22.3,24.4,27.2,31.9,30.5,25.2,23.1,28.7,29.2,25.5,24.6)
> plot(month,temp21,type = "b",main = "temperature-2021",col="blue",cex=2,pch=2,lwd=2,lty=1)

# Pie chart
> books<-c("Biography","comic","poerty","story","fashion magazines","Cookbook","Fiction")
> readers<-c(20,30,50,40,25,60,58)
> pie(readers,labels=books,main="readers survey",col=rainbow(length(books)))

# Extending Pie chart
> books<-c("Biography","comic","poerty","story","fashion magazines","Cookbook","Fiction")
> readers<-c(20,30,50,40,25,60,58)
> pie(readers,labels=books,main="readers survey",col=rainbow(length(books)))
> legend(x="topright", cex = 0.4,title="book type", legend = books,fill = rainbow(length(books)))

# Pie in 3D 
> install.packages("plotrix")
> library("plotrix")
> pie3D(readers,labels = books, explode = 0.1, main ="readers survey", col = rainbow(length(books)))

# Bar chart
> print(customer_data)
  CustomerId    Product
1          1     Laptop
2          2     Mobile
3          3 Television
4          4     Iphone
5          5       Ipad
6          6   Mackbook
> barplot(customer_data$CustomerId,names.arg = customer_data$Product)

#Bar chart with different colors
> barplot(customer_data$CustomerId,names.arg = customer_data$Product,col = rainbow(6))
> barplot(customer_data$CustomerId,names.arg = customer_data$Product,col = heat.colors(6))
> barplot(customer_data$CustomerId,names.arg = customer_data$Product,col = terrain.colors(6))
> barplot(customer_data$CustomerId,names.arg = customer_data$Product,col = topo.colors(6))

# Grouped Bar chart
> student<-list(names=c("anas","arif","danish","atharva"),Per=c(88,87,98,78),Per=c(92,91,65,78))
> print(student)
  names mathPer engPer
1    anas      88     92
2    arif      87     91
3  danish      98     65
4 atharva      78     78

# Let's make it matrix and no.of rows=2 and no.of col=4 for Grouped Bar chart
> studMat<-matrix(student$Per,student$Per,nrow=2,ncol=4)
> rownames(studMat)=c("Math %", "English %")
> colnames(studMat)=(student$names)
> print(studMat)
  

# Now make it Group chart
> barplot(studMat,xlab = "student names",ylab = "percentage of students",col = c(7,2),beside = TRUE)

# Stack Chart
img<-barplot(studMat,xlab = "student names",ylab = "percentage of students",main = "School Report",names.arg = student$names,col = rainbow(5))

#heading of chart
> legend(x="topright",cex=1,legend =c("English %","Math %"),fill = rainbow(5))
