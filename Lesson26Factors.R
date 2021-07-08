getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")
head(movies)
tail(movies)
str(movies)

summary(movies)

###Function: factor
factor(movies$Year)
movies$Year <- factor(movies$Year)
summary(movies)
str(movies)
