g_index <- function(data, round = 2) {
  
  gind <- vector()
  
  for (i in 1:dim(data)[1]) {
      drun <- data[i,]
      drun2 <- participant_summary(drun)
      drun3 <- drun2$lettercount[1:4]
      gind[i] = ((drun3$a + drun3$d) - (drun3$b + drun3$c)) / (sum(drun3))
  }
  
  gind = round(gind, round)
  return("g" = gind)
  
}
