\name{d_apostrophe}
\title{d_apostrophe calculation}
\usage{
d_apostrophe(
  data,
  round = 2)
}
\description{
A function to calculate d_apostrophe calibration accuracy values. 

This function requires a performance-judgement input that is based on binary data. If you obtained the data from a 4-point Likert scale, first use the function `binarization` to transform the values accordingly. Thereby, part of the information will be lost as the judgements will be grouped as "yes" or "no". 

The data input can correspond directly to the output of the function `binarization`. 
}
\arguments{
\item{data}{data frame with count data of the letters a to d}
\item{round}{Rounding factor for the results output}
}
\examples{}
\references{Schraw, G., Kuch, F., Gutierrez, A. P., & Richmond, A. S. (2014). Exploring a three-level model of calibration accuracy. Journal of Educational Psychology, 106(4), 1192.}