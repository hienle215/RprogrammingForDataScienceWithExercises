### ---- -2 ----- -1 ----- 0 ----- 1 ---- 2
#1
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
}

###2
rm(answer)
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
}

###3
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
} else{
  answer <- "Less or equal to 1"
}

###4
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
} else{
  if(x >=1){
    answer <- "Between -1 and 1"
  } else{
    answer <- "Less than -1"
  }
}

###5
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
} else if(x >=1){
    answer <- "Between -1 and 1"
  } else{
    answer <- "Less than -1"
  }
}

