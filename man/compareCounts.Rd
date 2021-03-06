% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{compareCounts}
\alias{compareCounts}
\title{Compare hot or coldspot count distributions of two sets of mature BCR sequences}
\usage{
compareCounts(dat_a, dat_b, count_function, ...)
}
\arguments{
\item{dat_a, dat_b}{A \code{data.table} corresponding to repertoire annotations}

\item{count_function}{The comparison function corresponding to hotspot or 
coldspot counts. Must be either getHotspotCount or getColdspotCount}
}
\value{
The average JS divergence of the count distributions inferred from
  \code{dat_a$sequence} and \code{dat_b$sequence}, respectively
}
\description{
Compare hot or coldspot count distributions of two sets of mature BCR sequences
}
