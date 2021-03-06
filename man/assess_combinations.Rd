% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spectra.R
\name{assess_combinations}
\alias{assess_combinations}
\title{Assess protein combinations}
\usage{
assess_combinations(wavelengths, excitations, emissions, proteins, n, lasers,
  channels, spectra.threshold = 0.01, channel.threshold = 0.01,
  intensity.threshold = 0.01)
}
\arguments{
\item{wavelengths}{A vector of wavelengths (nm).}

\item{excitations}{A vector of excitation intensities.}

\item{emissions}{A vector of emmision intensities.}

\item{proteins}{A vector of protein labels that correspond to each
measurement.}

\item{n}{The number of protein combinations to consider.}

\item{lasers}{Vector of lasers exciting given proteins e.g. c(488, 642).}

\item{channels}{Vector of channels for which spectral area is calculated
e.g. c('530/30', '670LP').}

\item{spectra.threshold}{Fraction of total spectral area observed in a 
given channel that is considered to be 
practically 0.}

\item{channel.threshold}{Fraction of maximum area observed within a given
channel that is considered to be practically 0
(compared to all channel areas of the protein).}

\item{intensity.threshold}{Fraction of maximum area observed across all 
channels that is considered to be practically 0
(compared to selected protein subset).}
}
\value{
A data frame listing the combination of protein1, protein2,
        protein3 individually, combined combination string, maximum
        overlap, sum of detection areas, ratio of largest area to
        smallest, and the detection strategy string that combines protein,
        channel, and channel overlap information.
}
\description{
Generates all possible combinations of proteins taken n at time, chooses
optimal detection channels by selecting those with least overlap and
calculates three metrics -- max total overlap for the selected channels,
sum of all spectral areas for the selected channels, and the ratio
of largest calculated area to smallest. Areas are calculated by taking into 
account excitation by given laser wavelength. As taking n combinations
may result in large computation time, it is recommended that some
prescreening is performed before running the assessment.
}

