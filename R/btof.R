btof <- function(data) {
    
    for (i in 1:dim(data)[1]) {
      for (j in 1:dim(data)[2]) {
        if (data[i,j] == "c") {data[i,j] = "g"}
        if (data[i,j] == "d") {data[i,j] = "h"}
      }
    }
    
    return("data" = data)
    
}
