\name{letterassignment}
\title{Assign letters to numerical input values}
\usage{
letterassignment(
  performance, 
  confidence, 
  scale = c(1:3))
}
\description{
A function to assign letters to numerical input values in relation to the actual performance. The letters are distributed according to Table 1 in the paper published along with this R package. If using binary data, use the function `btof` before continuing with the `participant_summary`-function 

}
\arguments{
\item{performance}{data frame with participant-wise performance data, marked as wrong (0) or correct (1)}
\item{confidence}{data frame with participant-wise performance jugement data on a numerical scale}
\item{scale}{indication of the numerical scale (i.e., the starting and end point)}
}
\examples{}
\references{}