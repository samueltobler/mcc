\name{combined_plot}
\title{Visualize the miscalibration effect and the calibration accuracy}
\usage{
combined_plot(
  miscalibration, 
  calibrationaccuracy, 
  singleexport = FALSE, 
  finalexport = TRUE, 
  name = "", 
  color = "black", 
  plot = "jitter", 
  colorbg = blue202)
}
\description{
A function to visualize the miscalibration effect and the calibration accuracy. 
}
\arguments{
\item{miscalibration}{vector with the miscalibration values per participant}
\item{calibrationaccuracy}{vector with the calibration accuracy values per participant}
\item{color}{color of the dots in the boxplot if plot = "jitter"}
\item{colorbg}{background color of the violin plot if plot = "violin"}
\item{plot}{type of boxplot: either "jitter" or "violin"}
\item{name}{name of the plot to save it}
\item{singleexport}{TRUE/FALSE value to determine whether the calibration accuracy and miscalibration plot should be exported individually}
\item{finalexport}{TRUE/FALSE value to determine whether the combined plot should be exported}
}
\examples{}
\references{}