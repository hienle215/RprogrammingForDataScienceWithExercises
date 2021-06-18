
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

stats$Internet.users
stats$Internet.users < 2
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate > 40,]
stats[stats$Birth.rate > 40 & stats$Internet.users < 2,] 
stats[stats$Income.Group == "High income",]
levels(stats$Income.Group)

stats[stats$Country.Name =="Malta",]
