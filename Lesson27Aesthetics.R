####--- factor

###- aesthetics
library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

#add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + geom_point()

## add colour
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre)) + geom_point()


###add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=Genre)) + geom_point()

##add size -better way
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgeMillions)) + geom_point()

### This #1