participant_summary <- function(data) {
  
  require(behavdata)
  p <- dim(data)[1]
  counts <- list()
  counts[1][[1]] <- 1
  for (k in 1:p){
  counts_ind <- behavdata::count_if(data[k,], value = letters)$Count
 counts[[k]] <- counts_ind
  #print(counts_ind)
  }
  
  df <- do.call(rbind.data.frame, counts)
  names(df) <- letters
  
  return(list("lettercount" = df))
}
