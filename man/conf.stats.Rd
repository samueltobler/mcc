\name{conf.stat}
\title{Calculate calibration accuracy and miscalibration values in one step}
\usage{
underconfidence(
  performance, 
  confidence, 
  scale = c(0:3), 
  round = 2, 
  ratio = 3)
}
\description{
A function to calculate calibration accuracy and miscalibration values, as well as under- and overconfidence in one step. 

The letters are distributed according to Table 1 in the paper published along with this R package. If using binary data, do not use this function but go step-by-step (i.e., letterassignment -> btof -> participant_summary -> calibrationaccuracy).
}
\arguments{
\item{performance}{data frame with participant-wise performance data, marked as wrong (0) or correct (1)}
\item{confidence}{data frame with participant-wise performance jugement data on a numerical scale}
\item{scale}{indication of the numerical scale (i.e., the starting and end point)}
\item{round}{Rounding factor for the results output}
\item{ratio}{Ratio of the weighting between full agreement and partial agreement (e.g., "yes" vs. "rather yes")}
}
\examples{}
\references{}