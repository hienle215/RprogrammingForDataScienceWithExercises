#### statistical transformations

library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")

u <- ggplot(data=movies, aes(x=CriticRating, y =AudienceRating, colour=Genre))
u
u + geom_point()
u + geom_point() + geom_smooth()
u + geom_point() + geom_smooth(fill=NA)


#Boxplots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))
u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()

#tip/hack
u + geom_boxplot(size=1.2) + geom_jitter()

# onather way
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)


#Critical rating
y <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour=Genre))
y + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)
                                 