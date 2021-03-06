% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{compareVJInsertionMatrices}
\alias{compareVJInsertionMatrices}
\title{Compare the transition matrices for VJ insertions for two datasets}
\usage{
compareVJInsertionMatrices(dat_a, dat_b)
}
\arguments{
\item{dat_a, dat_b}{A \code{data.table} corresponding to repertoire annotations}
}
\value{
The mean absolute difference of matrix entries, taken elementwise
}
\description{
Compare the transition matrices for VJ insertions for two datasets
}
