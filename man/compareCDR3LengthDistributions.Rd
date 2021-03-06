% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{compareCDR3LengthDistributions}
\alias{compareCDR3LengthDistributions}
\title{Compare the distribution of CDR3 lengths for two datasets}
\usage{
compareCDR3LengthDistributions(dat_a, dat_b, by_amino_acid = FALSE)
}
\arguments{
\item{dat_a, dat_b}{A \code{data.table} corresponding to repertoire annotations}

\item{by_amino_acid}{If TRUE, the length is computed in terms of amino 
acids; otherwise, the length is computed in terms of nucleotides.}
}
\value{
The JS divergence of the two CDR3 length distributions
}
\description{
Compare the distribution of CDR3 lengths for two datasets
}
