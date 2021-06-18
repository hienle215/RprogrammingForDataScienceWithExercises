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

#-----Visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size = I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, color=I("red"), size = I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, color=Income.Group, size = I(4))
