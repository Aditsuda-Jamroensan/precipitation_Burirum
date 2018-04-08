#import data
library(readxl)

#names
nemes(Nangrong)
names(Nangrong)[names(Nangrong) =="X__1"] <- "DAY"
names(Nangrong)[names(Nangrong) =="ม.ค."] <- "JAN"
names(Nangrong)[names(Nangrong) =="ก.พ."] <- "FEB"
names(Nangrong)[names(Nangrong) =="มี.ค."] <- "MAR"
names(Nangrong)[names(Nangrong) =="เม.ย."] <- "APR"
names(Nangrong)[names(Nangrong) =="พ.ค."] <- "MAY"
names(Nangrong)[names(Nangrong) =="มิ.ย."] <- "JUN"
names(Nangrong)[names(Nangrong) =="ก.ค."] <- "JUL"
names(Nangrong)[names(Nangrong) =="ส.ค."] <- "AUG"
names(Nangrong)[names(Nangrong) =="ก.ย."] <- "SEP"
names(Nangrong)[names(Nangrong) =="ต.ค."] <- "OCT"
names(Nangrong)[names(Nangrong) =="พ.ย."] <- "NOV"
names(Nangrong)[names(Nangrong) =="ธ.ค."] <- "DEC"
#plot preciptation(y) with time(x)

#save plot

Nangrong <-  read_excel("C:/Users/patsakon/Downloads/Nangrong.xlsx",sheet = 2,  range = "A6:M36")
plot(Nangrong)
#mean
Nangrong$mean<-rowMeans(subset(Nangrong,select = JAN:DEC))
#max,min
Nangrong$max<-apply(subset(Nangrong,select =c(JAN:DEC)),1,max)
Nangrong$min<-apply(subset(Nangrong,select =c(JAN:DEC)),1,min)
#ggplot2
library(ggplot2)
ggplot(Nangrong,aes(DAY,SEP)) + geom_boxplot()