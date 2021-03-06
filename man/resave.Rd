% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resave.R
\name{resave}
\alias{resave}
\title{Updates a .Rdata file}
\usage{
resave(..., list = character(), file)
}
\arguments{
\item{...}{Objects in work space.  Will overwrite objects that already exist
in file with the same name.}

\item{list}{Option to pass objects in work space as a character vector.}

\item{file}{An (potentially already existing) rdata file to save objects
specified by ellipsis into.}
}
\description{
Updates an .Rdata file by adding the variables specified in ellipsis to the rdata file.
No longer exported.
}
\keyword{rdata}
\keyword{resave,}
\keyword{save,}
