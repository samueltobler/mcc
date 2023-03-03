overconfidence <- function(data, round = 2, ratio = 3) {
  x <- ratio; y = 1
  
  oc <- vector()
  
  p <- dim(data)[1]
  
  for (i in 1:p) {
    if (data$b[i] == 0 & data$d[i] == 0) {
      oc[i] = 0} 
    else {
      oc[i] = (x*data$b[i] + y*data$d[i])/(x*(data$b[i]+ data$h[i]) + y*(data$d[i]+ data$f[i]))
    }
  }
  
  
  oc <- round(oc, 2)
  return(list("o" = oc))
}