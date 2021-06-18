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

#------- Basic operations with a DF
stats[1:10,] #subsetting
stats[3:9,]
stats[c(4,100),]

#----Remember how the [] work
stats[1,]
is.data.frame(stats[1,]) # no need for drop=F

stats[,1]
is.data.frame(stats[,1])

stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])

# miltiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#--- adding columns to the data frames
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)

#----test of kowledge
stats$xyz <- 1:5
head(stats)
head(stats, n=10)


#---Remove a column
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)
