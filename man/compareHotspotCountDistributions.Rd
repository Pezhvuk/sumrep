% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{compareHotspotCountDistributions}
\alias{compareHotspotCountDistributions}
\title{Compare hotspot count distributions of two sets of mature BCR sequences}
\usage{
compareHotspotCountDistributions(dat_a, dat_b, column = "sequence", ...)
}
\arguments{
\item{dat_a}{A \code{data.table} corresponding to repertoire annotations}

\item{dat_b}{A \code{data.table} corresponding to repertoire annotations}

\item{column}{the column name of \code{dat} containing the strings on which
the distribution should be computed}
}
\value{
The JS divergence of the hotspot count distributions inferred from
  \code{dat_a$sequence} and \code{dat_b$sequence}, respectively
}
\description{
Compare hotspot count distributions of two sets of mature BCR sequences
}
