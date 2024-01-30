confidence_plot.groups <- function(data, color = blue, plot = "jitter", colorbg = blue202, name = "", export = FALSE, group) {
  
  require(ggplot2)
  require(ggpubr)
  require(RColorBrewer)
  
  df <- data.frame(Score = data, Class = "", Group = group)
  
  if(plot == "jitter") {
    
    bxp <- ggplot(df, aes(y = Score, color = Group, x = Group), ylim = c(0,1)) +
      geom_hline(yintercept = c(0.2,0.5, 0.8), color = "black", size = 0.5, linetype = "dashed") +
      geom_hline(yintercept = c(0,1), color = "black", size = 0.5, linetype="dashed") + 
      geom_violin(aes(fill = Group), width = 0.8)  + 
      geom_boxplot(width=0.4, position = position_dodge(width=0.9), )+ 
      scale_color_manual(values = c("black", "black", "black"))+
      scale_fill_manual(values = c(rgb(0.95, 0.95, 0.95), 
                                   rgb(0.95, 0.95, 0.95), 
                                   rgb(0.95, 0.95, 0.95)), name = "")+
      theme(strip.text.y = element_text(angle = 0), 
            axis.ticks.x = element_blank()) 
    
    bxp1 <- bxp + theme_pubr()+ 
      theme(legend.position = "none", axis.ticks.x = element_blank()) + 
      xlab("")+
      ylab("Overconfidence Score")+
      scale_y_continuous(breaks = c(0, 0.2, 0.5, 0.8, 1), limits = c(0,1)) + 
      guides(fill=guide_legend(title=""), color = "none")  +
      geom_jitter(color=color, size=3, alpha=0.5, width = 0.25)
    
  } 
  
  if (export == TRUE) {
    name <- paste(name,".pdf", sep = "")
    ggsave(name, bxp1, width = 10, height = 6)
  }
  
  return(bxp1)
  
  
}
