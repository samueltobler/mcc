letterassignment <- function(performance, confidence, scale = c(0:3)) {
  
  if (length(scale) > 4) {print("Scale needs to have 4 elements."); stop}
  
  confidence_letters <- confidence
  
  for (i in 1:dim(confidence)[1]) {
    for (j in 1:dim(confidence)[2]) {
      if (performance[i,j] == 1) {
        if (confidence[i,j] == scale[4]) {
          confidence_letters[i,j] = "a"
        } else {
          if (confidence[i,j] == scale[3]) {
            confidence_letters[i,j] = "c"
          } else {
            if (confidence[i,j] == scale[2]) {
              confidence_letters[i,j] = "e"
            } else {
              if (confidence[i,j] == scale[1]) {
                confidence_letters[i,j] = "g"
              }
            }
          }
        }
      } else {
        if (performance[i,j] == 0) {
          if (confidence[i,j] == scale[4]) {
            confidence_letters[i,j] = "b"
          } else {
            if (confidence[i,j] == scale[3]) {
              confidence_letters[i,j] = "d"
            } else {
              if (confidence[i,j] == scale[2]) {
                confidence_letters[i,j] = "f"
              } else {
                if (confidence[i,j] == scale[1]) {
                  confidence_letters[i,j] = "h"
                }
              }
            }
          }
        }
      }
    }
  }
  
  return(list("letters" = confidence_letters))
  
}