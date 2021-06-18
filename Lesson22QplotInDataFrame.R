
### INTRODUCTION TO QPLOT FUNCTION

#Method2: Set WD and read data
getwd()

##Windowns:
setwd("C:\\Users\Kirill\\Desktop\\R programming")

##Mac
setwd("/User/kirilleremenko/Desktop/R programming")

getwd()

stats <- read.csv("P2-Demographic-Data.csv")
stats

#------ Exploring data
stats
nrow(stats)
ncol(stats)

#---- Filtering data frames
head(stats)


#----Qplot function
library(ggplot2)
?qplot
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group, y=Birth.rate)
qplot(data=stats,x=Income.Group, y=Birth.rate, size=3)
qplot(data=stats,x=Income.Group, y=Birth.rate, size=I(10))
qplot(data=stats,x=Income.Group, y=Birth.rate, size=I(10), color=I("blue"))
qplot(data=stats,x=Income.Group, y=Birth.rate, size=I(10), color="blue")
qplot(data=stats,x=Income.Group, y=Birth.rate, geom="boxplot")
