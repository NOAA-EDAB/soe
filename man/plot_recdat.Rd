% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_recdat.R
\name{plot_recdat}
\alias{plot_recdat}
\title{plot recreational data}
\usage{
plot_recdat(shadedRegion = NULL, report = "MidAtlantic", varName = "landings")
}
\arguments{
\item{shadedRegion}{Numeric vector. Years denoting the shaded region of the plot (most recent 10)}

\item{report}{Character string. Which SOE report ("MidAtlantic", "NewEngland")}

\item{varName}{Character string. Variable to plot ("landings","effortdiversity","catchdiversity","effort")}
}
\value{
ggplot object
}
\description{
Plot recdat data set, effort, diversity, and landings
}
