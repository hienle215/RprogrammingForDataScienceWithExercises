###facets layer

library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")

#### using facets
v <- ggplot(data=movies, aes(x=BudgeMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")


###facets
v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + facet_grid(Genre~.)

v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + facet_grid(Genre~., scale="free")

#scatterplots
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
w + geom_point(size=3)

#facets
w + geom_point(size=3) + facet_grid(Genre~.)

w + geom_point(size=3) + facet_grid(.~Year)

w + geom_point(size=3) + facet_grid(Genre~Year)

w + geom_point(aes(size=BudgeMillions)) + facet_grid(Genre~Year)
