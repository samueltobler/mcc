\name{binarization}
\title{Transform 4-point data to binary data of performance judgements}
\usage{
binarization(
  data)
}
\description{
A function to transform 4-point data to binary data of performance judgements. Thereby, values corresponding to "rather yes" or "rather no" will be equalized to "yes" and "no", respectively. The output of the `letterassignment`-function can directly be taken as data set. 
}
\arguments{
\item{data}{data frame with letters from a to h corresponding to the judgement values}
}
\examples{
binarization(data = x1$letters) 
}
\references{}