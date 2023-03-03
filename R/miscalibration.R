miscalibration <- function(data, round = 2, ratio = 3) {
  
  x = ratio; y = 1
  
  p <- dim(data)[1]
  mis <- vector()
  
  for (i in 1:p) {
    d <- data[i,]
    
    tot <- (1/(x*(d$b+d$h+d$a+d$g) + y*(d$c+d$d+d$e+d$f)))
    
    m <- tot * (x*(d$b-d$g) + y*(d$d+d$e))
    mis[i] <- m
  }
  
  mis <- round(mis, 2)
  return(list("m" = mis))
}

