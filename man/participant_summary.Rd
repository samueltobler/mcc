\name{participant_summary}
\title{Summarize the letter participant data}
\usage{
participant_summary(
  data)
}
\description{
A function to summarize the participants' performance judgement data that is presented as letters from a to h. 

The input file should be the the output file of the function `letterassignment`. 

}
\arguments{
\item{data}{data frame with counted letters from a to h corresponding to the judgement values}
}
\examples{
participant_summary(data = x1$letters) 
}
\references{}