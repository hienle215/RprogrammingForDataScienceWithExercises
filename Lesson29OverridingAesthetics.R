###- aesthetics
library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

## overriding aesthetics
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgeMillions))


#add geom layer
 q + geom_point()

## overriding aes
 q + geom_point(aes(size=CriticRating))
 
 q + geom_point(aes(colour=BudgeMillions))
 
 q + geom_point() 

q + geom_point(aes(x=BudgeMillions)) + xlab("BudgeMillions$$$")

q + geom_line() + geom_point()

# reduce line size

q + geom_line(size = 1) + geom_point()
