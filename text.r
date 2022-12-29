# import data from text file
> getwd()
[1] "C:/Users/VISHAL/Documents"
> setwd(dir="C://Users//VISHAL//Desktop//ex_6")
> demo<-read.table("Text.txt",header=TRUE,sep=" ",strip.white=TRUE)
> demo
     rno.Name.Dept
1 7\tShresth\tComp
2 8\tAaditya\tComp
3  9\tVedant\tComp
4 10\tAniket\tComp
5  29\tSwati\tComp
> 
> 
> # export data to text file
> 
> write.table(demo,"hello.txt",row.names=FALSE)
> 
> 
> # import data from csv file
> 
> demo2<-read.csv(file="Dar.csv",header=TRUE,stringsAsFactors=FALSE,strip.white=TRUE)
> demo2
  rno    Name Dept
1   7 Shresth Comp
2   8 Aaditya Comp
3   9  Vedant Comp
4  10  Aniket Comp
5  29   Swati Comp
> 
> 
> 
> # export data to csv file

> write.csv(demo2,"newDar.csv",row.names=FALSE)
> 
> 

###### working with XLConnect package 
> 
> 
> 
> install.packages("XLConnect")
Installing package into ‘C:/Users/VISHAL/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
also installing the dependency ‘rJava’

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.2/rJava_1.0-6.zip'
Content type 'application/zip' length 1245703 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.2/XLConnect_1.0.5.zip'
Content type 'application/zip' length 29541341 bytes (28.2 MB)
downloaded 28.2 MB

package ‘rJava’ successfully unpacked and MD5 sums checked
package ‘XLConnect’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\VISHAL\AppData\Local\Temp\Rtmpc77c2T\downloaded_packages
> library(XLConnect)
XLConnect 1.0.5 by Mirai Solutions GmbH [aut],
  Martin Studer [cre],
  The Apache Software Foundation [ctb, cph] (Apache POI),
  Graph Builder [ctb, cph] (Curvesapi Java library),
  Brett Woolridge [ctb, cph] (SparseBitSet Java library)
https://mirai-solutions.ch
https://github.com/miraisolutions/xlconnect


> demo3<-readWorksheetFromFile("new_file.xls",sheet=1,startRow=1,endRow=4)
> demo3
  rno   names dept
1   7 shresth comp
2   8  aditya comp
3   9  vedant comp
> 
> 
> 
> new<-loadWorkbook("new_file.xls")
> getSheets(new)
[1] "Sheet1"
> 
> demo4<-readWorksheet(new,sheet=1)
> demo4
  rno   names dept
1   7 shresth comp
2   8  aditya comp
3   9  vedant comp
4  10  aniket comp
5  29   swati comp
> 
> 
> 
> demo5<-loadWorkbook("new_file.xls",create=TRUE)
> createSheet(demo5,name="newSheet")
> writeWorksheet(demo5,demo3,sheet="newSheet",startRow=1)
> saveWorkbook(demo5)
> 
> 
> 
> 
> ### working with xlsx package
> install.packages("xlsx")
Installing package into ‘C:/Users/VISHAL/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
also installing the dependency ‘xlsxjars’

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.2/xlsxjars_0.6.1.zip'
Content type 'application/zip' length 9485708 bytes (9.0 MB)
downloaded 9.0 MB

trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.2/xlsx_0.6.5.zip'
Content type 'application/zip' length 374917 bytes (366 KB)
downloaded 366 KB

package ‘xlsxjars’ successfully unpacked and MD5 sums checked
package ‘xlsx’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\VISHAL\AppData\Local\Temp\Rtmpc77c2T\downloaded_packages
> 
> library(xlsx)

Attaching package: ‘xlsx’

The following objects are masked from ‘package:XLConnect’:

    createFreezePane, createSheet, createSplitPane, getCellStyle, getSheets, loadWorkbook, removeSheet, saveWorkbook, setCellStyle, setColumnWidth, setRowHeight

> demo<-read.xlsx("AJ.xlsx",sheetIndex = 1)
> 
> 
> 
> View(demo)

###  working with readxl packages

library(readxl)
> demo2<-read_excel("AJ.xlsx")
> View(demo2)
> 