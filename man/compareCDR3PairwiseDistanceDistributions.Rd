% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{compareCDR3PairwiseDistanceDistributions}
\alias{compareCDR3PairwiseDistanceDistributions}
\title{Compare levenshtein distance distributions of two CDR3 repertoires}
\usage{
compareCDR3PairwiseDistanceDistributions(dat_a, dat_b, by_amino_acid = TRUE,
  column = ifelse(by_amino_acid, "junction_aa", "junction"),
  approximate = TRUE)
}
\arguments{
\item{dat_a, dat_b}{A \code{data.table} corresponding to repertoire annotations}
}
\value{
The JS divergence of the levenshtein distance distributions of the
  CDR3s of the two repertoires
}
\description{
Compare levenshtein distance distributions of two CDR3 repertoires
}
