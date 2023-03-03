\name{underconfidence}
\title{Calculate underconfidence values}
\usage{
underconfidence(
  data, 
  round = 2, 
  ratio = 3)
}
\description{
A function to calculate underconfidence values for metacognitive calibration

The input file should be the the output file of the function `participant_summary`. 

}
\arguments{
\item{data}{data frame with counted letters from a to h corresponding to the judgement values}
\item{round}{Rounding factor for the results output}
\item{ratio}{Ratio of the weighting between full agreement and partial agreement (e.g., "yes" vs. "rather yes")}
}
\examples{
underconfidence(data = x2$lettercount) 
}
\references{}