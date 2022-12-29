#importing text file 
setwd("path")
worldInfo <- read.table("SampleData.txt",header=TRUE )
worldInfo
class(worldInfo)
#data processing
worldInfo <- rbind(worldInfo,list("Pakistan","Islamabad","Pakistani_rupee"))
worldInfo

worldInfo <- cbind(worldInfo,SF=c("Alg","Ang","Ind","Indn","Irn","Irq","Pak"))
worldInfo

#exporting the file
write.table(worldInfo,"updatedSample.txt")
#importing csv file
Diamonds <- read.csv("P2-Mispriced-Diamonds.csv",header = TRUE)
Diamonds
#exporting the file
Diamonds <- cbind(Diamonds,colour=c("red","white","blue","white","white","red","white","blue","white","white","red","white","blue","white","white"))
write.csv(Diamonds,"Heere.csv",row.names = FALSE)

#importing a excel file
#installing required packages
setwd("Path")

install.packages("readxl")
library(readxl)

ExcelDemo <- read_excel("Book1.xlsx",skip = 1)
ExcelDemo <- rbind(ExcelDemo,list(105,"The awakening","Nathuram Purandare",340))

install.packages("writexl")
library(writexl)
#exporting the file
write_excel(ExcelDemo,"NewBook.xlsx",row.names=FALSE)
