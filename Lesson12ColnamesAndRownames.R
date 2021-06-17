### matrix()
?matrix
my.data <- 1:20
my.data

A <- matrix(my.data, 4, 5)
A
A[2,3]

B <- matrix(my.data, 4,5, byrow=T)
B
B[2,5]

# rbind() function
r1 <- c("I", "am","happy")
r2 <- c("what", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1, r2, r3)
C

#cbind
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D

#named Vectors
Charlie <- 1:5
Charlie

#give names
names()
names(Charlie)

names(Charlie) <- c("a","b","c","d","e")
Charlie
Charlie["d"]

names(Charlie)

#clear names
names(Charlie) <- NULL
Charlie

#--------
#Naming matrix dimesions 1
temp.vec <- rep()
c("a","b","zZ")

temp.vec <- rep(c("a","b","zZ"),times = 3)
temp.vec

temp.vec <- rep(c("a","b","zZ"),each = 3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo

colnames(Bravo) <- c("X", "Y", "Z")
Bravo

rownames(Bravo) <- c("how", "are", "you")
Bravo

Bravo[2,2]

Bravo["are", "Y"] <- 0
Bravo

rownames(Bravo)
