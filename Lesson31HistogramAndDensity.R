## histogramm and density charts

library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")

#histograme
s <- ggplot(data=movies, aes(x=BudgeMillions))
s + geom_histogram(binwidth=10)

#add color
s + geom_histogram(binwidth = 10, aes(fill=Genre))

## add a border
s + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

# density charts
s + geom_density()
s + geom_density(aes(fill=Genre), position="stack") ## it is hard to explain the data regarding density charts. Histograme is more popular

