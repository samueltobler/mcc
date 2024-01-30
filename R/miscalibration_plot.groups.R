miscalibration_plot.groups <- function(miscalibration, calibrationaccuracy, 
                                         export = FALSE, name = "", group) {
  
  require(ggplot2)
  require(ggpubr)
  require(RColorBrewer)
  
  grey95 <- rgb(0.95, 0.95, 0.95)
  
  dfx <- data.frame(Score = miscalibration, Class = "", accuracy = calibrationaccuracy, Group = group)
  
  t1 <- ggplot(dfx, aes(x = Group, y = Score), ylim = c(-1,1)) +
    geom_hline(yintercept = 0, color = "black", size = 0.5, linetype = "dashed")+
    geom_violin(aes(fill = Group), fill = grey95) +#facet_wrap(~Group)+
    geom_boxplot(width = 0.3) +
    geom_jitter(width = 0.25, size = 3, aes(color = accuracy), alpha = 0.9)+
    scale_color_gradient(low = "red", high = green, limits = c(0,1), 
                         name = "Calibration    \nAccuracy\n") + 
    theme_pubr(legend = "right")+
    xlab("")+
    scale_y_continuous(breaks = c(-1, -0.5, 0, 0.5, 1), limits = c(-1, 1))+
    ylab("Miscalibration Score")+
    theme(strip.text.y = element_text(angle = 0), axis.ticks.x = element_blank()) 
  
  
  if (export == TRUE) {
    name <- paste(name,".pdf", sep = "")
    ggsave(name, t1, width = 10, height = 6)
  }
  
  
  return(t1)
  
}
