binarization <- function(data) {
  
  for (i in 1:dim(data)[1]) {
    for (j in 1:dim(data)[2]) {
     if (data[i,j] == "c") {data[i,j] = "a"}
     if (data[i,j] == "e") {data[i,j] = "g"}
     if (data[i,j] == "d") {data[i,j] = "b"}
     if (data[i,j] == "f") {data[i,j] = "h"}
    }
  }
  
  for (i in 1:dim(data)[1]) {
    for (j in 1:dim(data)[2]) {
      if (data[i,j] == "g") {data[i,j] = "c"}
      if (data[i,j] == "h") {data[i,j] = "d"}
    }
  }
  
  return("data" = data)
  
}
