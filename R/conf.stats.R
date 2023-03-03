conf.stats <- function(performance, confidence, ratio = 3, round = 2, scale = c(0:3)) {
  
  x1 <- letterassignment(performance, confidence, scale = scale)
  x2 <- participant_summary(data = x1$letters)
  
  oc <- overconfidence(x2$lettercount, round = round, ratio = ratio)
  uc <- underconfidence(x2$lettercount, round = round, ratio = ratio)
  ca <- calibrationaccuracy(x2$lettercount, ratio = ratio, round = round)
  mi <- miscalibration(x2$lettercount, ratio = ratio, round = round)
  
  df <- data.frame("overconfidence" = oc$o, 
                   "underconfidence" = uc$u, 
                   "calibrationaccuracy" = ca$cal, 
                   "miscalibration" = mi$m)
  
  return("results" = df)
}
