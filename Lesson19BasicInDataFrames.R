
?read.csv
# Method1: Select the file manually
stats <- read.csv(File.choose())
stats

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

head(stats)
tail(stats)

head(stats, n=10)
tail(stats, n = 8)
str(stats) #str() runif()

summary(stats)

### $ in R
stats[3,3]
stats[3, "Birth.rate"]
stats["Angola", 3]
stats$Internet.users
stats$Internet.users[2]
stats[, "Internet.users"]

levels(stats$Income.Group)
