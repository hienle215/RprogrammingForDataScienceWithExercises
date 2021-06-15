### VECTORS and FUNCTIONS

x <- rnorm(5)
x

# R-specfic programming loop
for(i in x){
  print(i)
}

print(x[1])
print[x[2]]
print(x[3])
print[x[4]]

#conventional programming loop
for(j in 1:5){
  print(x[j])
}

N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach
c <- a*b #This one is faster than de-vectorized approach

#De-Vectorized approach
d <- rep(NA, N)
for(i in 1:N){
  d[i] <- a[i]*b[i]
}
