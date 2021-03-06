% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/processing.R
\name{flag_scatter}
\alias{flag_scatter}
\title{Identify emission scatter.}
\usage{
flag_scatter(excitations, emissions, intensities, order = 3, n1 = 7,
  n2 = 21, r1 = 5, r2 = 5, m1 = 50, m2 = 20)
}
\arguments{
\item{excitations}{Vector of excitation wavelengths or a single excitation
value.}

\item{emissions}{Vector of emission wavelengths.}

\item{intensities}{Vector of emission intensities.}

\item{order}{Polynomial order to use in Savitzky-Golay filter.}

\item{n1}{Number of points to use in first Savitzky–Golay.}

\item{n2}{Number of points to use in second Savitzky–Golay.}

\item{r1}{Threshold ratio between first derivative of filtered values
(first filter divided by second).}

\item{r2}{Threshold ratio between second derivative of filtered values
(first filter divided by second).}

\item{m1}{Minimum value of first derivative calculated with the first
filter.}

\item{m2}{Minimum value of second derivative calculated with the first
filter.}
}
\value{
A vector of booleans corresponding to each intensity where TRUE
        indicates a scatter spike.
}
\description{
Identifies sharp spikes in spectra that are composed of relatively few
points. Intensity data is filtered with a 3rd order Savitzky–Golay
filter using 7 and 21 points. If the first or second derivative
at an observed point is 5 times greater when using fewer points, it is
flagged as unusually sharp. A continuous cluster of points that
occurs within a specified wavelength of the excitation is identified as
a spike. If more than one unique excitation is provided, the median spike
width is used across all emissions. All integer multiples of the
excitation wavelength are also assessed.
}

