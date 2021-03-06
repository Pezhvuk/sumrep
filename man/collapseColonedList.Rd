% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PartisFunctions.R
\name{collapseColonedList}
\alias{collapseColonedList}
\title{Here we use stringr::str_split to get empty strings after a ':', if necessary.
E.g., with strsplit, '::' would yield c('', ''), whereas
stringr::str_split would yield c('', '', '')}
\usage{
collapseColonedList(coloned_list, type_conversion = as.numeric)
}
\description{
Here we use stringr::str_split to get empty strings after a ':', if necessary.
E.g., with strsplit, '::' would yield c('', ''), whereas
stringr::str_split would yield c('', '', '')
}
