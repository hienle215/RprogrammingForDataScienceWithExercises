library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")

####- layer
t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth=10, fill="white", colour="blue")

### another way
t <- ggplot(data=movies)
t + geom_histogram(binwidth=10, aes(x=AudienceRating), fill="white", colour="blue")

### what is the difference between 2 presented ways?
t + geom_histogram(binwidth=10, aes(x=CriticRating), fill="white", colour="blue")
