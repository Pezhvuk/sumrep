% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PartisFunctions.R
\name{getPartisSimulation}
\alias{getPartisSimulation}
\title{Simulate a dataset based on parameters from partis annotations}
\usage{
getPartisSimulation(parameter_dir, partis_path = Sys.getenv("PARTIS_PATH"),
  output_file = "simu.csv", num_events = NULL, num_leaves = NULL,
  cleanup = TRUE, do_full_annotation = FALSE,
  extra_columns = "v_gl_seq:v_qr_seqs:cdr3_seqs:naive_seq",
  mimic_data_read_length = TRUE)
}
\arguments{
\item{parameter_dir}{The parent output folder for partis (which is '_output'
by default. The function cd's into the params directory}

\item{num_events}{The desired number of VDJ rearragement events for the
simulation}
}
\description{
Simulate a dataset based on parameters from partis annotations
}
