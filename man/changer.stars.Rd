% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/changer.R
\name{changer.stars}
\alias{changer.stars}
\title{Changepoint detection for stars objects}
\usage{
\method{changer}{stars}(x, method = "prophet", FUTURE = FALSE, ...)
}
\arguments{
\item{x}{stars. Spatiotemporal cube.}

\item{method}{character. One of prophet, ...}

\item{FUTURE}{logical. Controls whether the calculation should be done in parallel via the future package.}

\item{...}{arguments passed to the underlying method.}
}
\description{
Changepoint detection for stars objects
}
