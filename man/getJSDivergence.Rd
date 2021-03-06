% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DivergenceFunctions.R
\name{getJSDivergence}
\alias{getJSDivergence}
\title{Compute the JS Divergence of two samples}
\usage{
getJSDivergence(list_a, list_b, continuous = FALSE, KL = FALSE)
}
\arguments{
\item{list_a}{First sample}

\item{list_b}{Second sample}
}
\value{
The positive-valued JS-divergence of the distributions induced from 
  list_a and list_b
}
\description{
The samples are assumed to contain discrete data by
default. If continuous, the lists are passed to 
\link{binContinuousListsAsDiscrete}
to be discretized into bins commensurate to the list sizes. 
Note: This function is symmetric in \code{list_a} and \code{list_b}, 
since JS-divergence is symmetric.
}
\examples{
l1 <- sample.int(100, replace=TRUE)
l2 <- sample.int(100, replace=TRUE)
getJSDivergence(l1, l2)
getJSDivergence(l2, l1)
getJSDivergence(l1, l1)
}
