### THEME

library(ggplot2)
movies <- read.csv("P2-Movie-Ratings.csv")
colnames(movies) <- c("Films", "Genre", "CriticRating", "AudienceRating", "BudgeMillions", "Year")

## adding theme
o <- ggplot(dat=movies, aes(x=BudgeMillions))
o + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")

#Aes lebels
h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")
h
h + xlab("Money Axis")
h + ylab("Number of Movies") + xlab("Money Axis")
h + ylab("Number of Movies") + xlab("Money Axis") + theme(axis.title.x=element_text(colour="DarkGreen", size=30), 
                                                         axis.title.y =element_text(colour="Red", size=30))

? theme
#legend formatting
h + ylab("Number of Movies") + xlab("Money Axis") + 
  theme(axis.title.x=element_text(colour="DarkGreen", size=30), 
         axis.title.y =element_text(colour="Red", size=30),  
  legend.title=element_text(size=30), 
  legend.text=element_text(size=20), 
  legend.position =c(1,1),
  legend.justification = c(1,1),
  plot.title=element_text(colour="DrakBlue", size =40, family="Courier"))
  