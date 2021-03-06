% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SummaryStats.R
\name{getCDR3PairwiseDistanceDistribution}
\alias{getCDR3PairwiseDistanceDistribution}
\title{Get a vector of CDR3 DNA strings of an annotated dataset}
\usage{
getCDR3PairwiseDistanceDistribution(dat, by_amino_acid = TRUE,
  column = ifelse(by_amino_acid, "junction_aa", "junction"),
  approximate = TRUE)
}
\arguments{
\item{dat}{A \code{data.table} corresponding to repertoire annotations}
}
\value{
Vector of CDR3 strings
}
\description{
Warning: This function is called on the raw dataset from 
  \code{doFullAnnotation} before \code{input_seqs} is changed to
  \code{sequence}.
}
