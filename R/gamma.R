gamma <- function(data, round = 2) {
  
  gamma <- vector()

  for (i in 1:dim(data)[1]) {
    drun <- data[i,]
    drun2 <- participant_summary(drun)
    drun3 <- drun2$lettercount[1:4]
    if (drun3$a*drun3$d == 0 &
        drun3$c*drun3$b == 0) {gamma[i] = 0} else {
    gamma[i] = (drun3$a*drun3$d - drun3$b*drun3$c)/(drun3$a*drun3$d + drun3$b*drun3$c)
        }
  }
  
  gamma = round(gamma, round)
  return("g" = gamma)
  
    
}