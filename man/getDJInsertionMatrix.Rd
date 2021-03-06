% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{getDJInsertionMatrix}
\alias{getDJInsertionMatrix}
\title{Get the Markov transition matrix for DJ insertions}
\usage{
getDJInsertionMatrix(dat)
}
\arguments{
\item{dat}{A \code{data.table} corresponding to repertoire annotations}
}
\value{
The empirical transition matrix for each (base, base) pair.
}
\description{
Get the Markov transition matrix for DJ insertions
}
