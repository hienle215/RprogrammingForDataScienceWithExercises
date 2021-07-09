library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")

##coordinates
#limits
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, size=BudgeMillions, colour=Genre))
#zoom
m + geom_point()

m + geom_point() + xlim(50, 100)
m + geom_point() + xlim(50, 100) + ylim(50,100)

#won't work well always
n <- ggplot(data=movies, aes(x=BudgeMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + ylim(0,100)

##how to zoom in the data
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + coord_cartesian(ylim=c(0, 50))


#improve 1
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
w + geom_point(aes(size=BudgeMillions)) + geom_smooth() + facet_grid(Genre~Year)
w + geom_point(aes(size=BudgeMillions)) + geom_smooth() + facet_grid(Genre~Year) + coord_cartesian(ylim=c(0,100))
