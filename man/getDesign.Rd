% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDesign.R
\name{getDesign}
\alias{getDesign}
\title{Gets a Design Matrix for a GAM or Linear Model}
\usage{
getDesign(form, data)
}
\arguments{
\item{form}{A formula or string beginning with ~ that can be interpreted as an mgcv or lm
formula without the outcome variable.}

\item{data}{A data frame containing the variables specified in form.}
}
\value{
Returns a design matrix constructed from form and data.
}
\description{
This function gets a design matrix for a generalized additive model (GAM)
 from the mgcv package or a linear model.
}
\keyword{design}
\keyword{matrix}
