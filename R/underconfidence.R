underconfidence <- function(data, round = 2, ratio = 3) {
  x <- ratio; y = 1
  
  oc <- vector()
  
  p <- dim(data)[1]
  
  for (i in 1:p) {
    if (data$g[i] == 0 & data$e[i] == 0) {
      oc[i] = 0} 
    else {
      oc[i] = (x*data$g[i] + y*data$e[i])/(x*(data$a[i]+ data$g[i]) + y*(data$c[i]+ data$e[i]))
    }
  }
  
  
  oc <- round(oc, 2)
  return(list("u" = oc))
}