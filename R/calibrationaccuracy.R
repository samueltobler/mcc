calibrationaccuracy <- function(data, round = 2, ratio = 3) {
  
  xratio = ratio; yratio = 1
  
  p <- dim(data)[1]
  cal <- vector()
  
  for (i in 1:p) {
    d <- data[i,]
    
    calx <- 1 - (1/(xratio*(d$b+d$h+d$a+d$g) + yratio*(d$c+d$d+d$e+d$f)))*
      (
        ((xratio*d$b+yratio*d$d)^2)/(xratio*(d$b+d$h) + yratio * (d$d+d$f))  +
          
          ((xratio*d$g + yratio*d$e)^2)/(xratio*(d$a+d$g) + yratio*(d$c+d$e))
      )
    
    
    if(d$b == 0 & d$d ==0) {
      
      calx <- 1 - (1/(xratio*(d$b+d$h+d$a+d$g) + yratio*(d$c+d$d+d$e+d$f)))*
        (
          ((xratio*d$g + yratio*d$e)^2)/(xratio*(d$a+d$g) + yratio*(d$c+d$e))
        )
      
    }
    
    
    if(d$g == 0 & d$e == 0) {
      
      calx <- 1 - (1/(xratio*(d$b+d$h+d$a+d$g) + yratio*(d$c+d$d+d$e+d$f)))*
        (
          ((xratio*d$b+yratio*d$d)^2)/(xratio*(d$b+d$h) + yratio * (d$d+d$f))
        )
      
    }
    
    if(d$g == 0 & d$e == 0 & d$b == 0 & d$d == 0) {calx = 1}
    
    cal[i] <- calx
    
  }
  
  cal = round(cal, round)
  
  return(list("cal" = cal)) 
  
}