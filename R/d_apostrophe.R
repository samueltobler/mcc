d_apostrophe <- function(data, round = 2) {
  
  val1s <- vector()
  val2s <- vector()
  
  for (i in 1:dim(data)[1]) {
    
    drun <- data[i,]
    
    sum1 <- participant_summary(drun)
    sum2 <- sum1$lettercount[1:4]
    
    if(sum2$a == 0) {val1 == 0} else {val1 <- sum2$a/(sum2$a+sum2$c)}
    if(sum2$b == 0) {val2 == 0} else {val2 <- sum2$b/(sum2$b+sum2$d)}
    
    val1s[i] <- val1
    val2s[i] <- val2
    
  }
  
val1z <- scale(val1s, center=TRUE,scale=TRUE)
a1 <- val1z[1:dim(data)[1]]

val2z <- scale(val2s, center=TRUE,scale=TRUE)
a2 <- val2z[1:dim(data)[1]]

dapo <- round(a1-a2, round)

return("d" = dapo)
  
}