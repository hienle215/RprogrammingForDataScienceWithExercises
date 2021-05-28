library("ggplot2")

ggplot(data=mydata, aes(x0carat, y=prices)) + geom_point()

#integer
x <- 2L

#daouble
y <- 2.5
typeof(y)

#complex
z <- 3 + 2i
typeof(z)

#Chracter
a <- "h"
a
typeof(a)
q1 <- T
q1
typeof(q1)
q2 <- F
q2
typeof(q2)
