% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ActivePremium.R
\name{ActiveReturn}
\alias{ActiveReturn}
\alias{ActivePremium}
\title{Active Premium or Active Return}
\usage{
ActiveReturn(Ra, Rb, scale = NA, ...)
}
\arguments{
\item{Ra}{return vector of the portfolio}

\item{Rb}{return vector of the benchmark asset}

\item{scale}{number of periods in a year
(daily scale = 252, monthly scale = 12, quarterly scale = 4)}

\item{...}{any other passthru parameters to Return.annualized
(e.g., \code{geometric=FALSE})}
}
\description{
The return on an investment's annualized return minus the benchmark's
annualized return.
}
\details{
Active Premium = Investment's annualized return - Benchmark's annualized
return

Also commonly referred to as 'active return'.
}
\examples{

    data(managers)
    ActivePremium(managers[, "HAM1", drop=FALSE], managers[, "SP500 TR", drop=FALSE])
    ActivePremium(managers[,1,drop=FALSE], managers[,8,drop=FALSE])
    ActivePremium(managers[,1:6], managers[,8,drop=FALSE])
    ActivePremium(managers[,1:6], managers[,8:7,drop=FALSE])
}
\references{
Sharpe, W.F. The Sharpe Ratio,\emph{Journal of Portfolio
  Management}, Fall 1994, 49-58.
}
\seealso{
\code{\link{InformationRatio}} \code{\link{TrackingError}}
  \code{\link{Return.annualized}}
}
\author{
Peter Carl
}
