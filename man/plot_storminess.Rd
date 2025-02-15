% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_storminess.R
\name{plot_storminess}
\alias{plot_storminess}
\title{plot storminess data}
\usage{
plot_storminess(shadedRegion = NULL, report = "MidAtlantic")
}
\arguments{
\item{shadedRegion}{Numeric vector. Years denoting the shaded region of the plot (most recent 10)}

\item{report}{Character string. Which SOE report ("MidAtlantic", "NewEngland")}
}
\value{
ggplot object
}
\description{
plots \link{storminess}
}
