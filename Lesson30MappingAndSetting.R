library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

## overriding aesthetics
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgeMillions))


#add geom layer
q + geom_point()
q + geom_point(aes(x=BudgeMillions)) + xlab("BudgeMillions$$$")

#mapping and setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

### adding colour 
# 1 mapping
r + geom_point(aes(color=Genre))

#2 setting
r + geom_point(colour="DarkGreen") #setting color as physic color

### ERROR IN SETTING COLOUR
r + geom_point(aes(colour="DarkGreen"))  #setting color as aes mapping


##MAPPING
r + geom_point(aes(size=BudgeMillions))
#Seting
r + geom_point(size=10)
### ERROR IN SETTING
r + geom_point(aes(size=10))
