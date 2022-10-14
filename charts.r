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
