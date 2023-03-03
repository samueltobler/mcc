combined_plot <- function(miscalibration, calibrationaccuracy, singleexport = FALSE, 
                          finalexport = TRUE, name = "", color = "black", plot = "jitter", 
                          colorbg = blue202, height = 5) {
  
  require(ggplot2)
  require(ggpubr)
  require(RColorBrewer)
  require(gridExtra)
  
  name0 <- name
  name1 <- paste("01_ConfidencePlot_",name,sep = "")
  name2 <- paste("02_Miscalibration_",name,sep = "")
  
  a <- confidence_plot(data = calibrationaccuracy, plot = "jitter",
                  export = singleexport, 
                  name = name1, 
                  color = color, 
                  colorbg = colorbg)
  
  b <- miscalibration_plot(miscalibration = miscalibration, 
                      calibrationaccuracy = calibrationaccuracy, 
                      export = singleexport,
                      name = name2)

 
  if (singleexport == TRUE) {
    
    name <- paste(name1,".pdf", sep = "")
    ggsave(name, a, width = 5, height = 6)
    name <- paste(name2,".pdf", sep = "")
    ggsave(name, b, width = 6, height = 6)
    
  }
  
  c <- grid.arrange(a, b, nrow = 1, widths = c(5.5,7))
  
  if (finalexport == TRUE) {
    
    name <- paste(name0, ".pdf", sep = "")
    ggsave(name, c, width = 12, height = height)
  }
  
 return(c) 
   
}
  