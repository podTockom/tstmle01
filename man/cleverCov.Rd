% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate_clever_covar.R
\name{cleverCov}
\alias{cleverCov}
\title{Clever Covariate calculation}
\usage{
cleverCov(fit, t, Anode, intervention = NULL, B = 100, N = 100,
  MC = 100, update = FALSE)
}
\arguments{
\item{fit}{\code{fit} object obtained by \code{initEst}.}

\item{t}{Outcome time point of interest. It must be greater than the intervention node A.}

\item{Anode}{Intervention node.}

\item{intervention}{Specify %g^*, of %P(A \mid \text{past}).}

\item{B}{How many samples to draw from P, as part of the h-density estimation.}

\item{N}{How many sample to draw from %P^*, as part of the h-density estimation.}

\item{MC}{How many Monte Carlo samples should be generated.}

\item{update}{\code{TRUE}, use updated fits to get Monte Carlo draws.}
}
\value{
An object of class \code{tstmle01}.
\describe{
\item{Hy}{Clever covariate for Y component of the likelihood.}
\item{Ha}{Clever covariate for A component of the likelihood.}
\item{Hw}{Clever covariate for W component of the likelihood.}
\item{Dbar}{Efficient Influence Curve.}
\item{h_star}{Empirical estimate of h-density under the intervention g^*.}
\item{h}{Empirical estimate of h-density under no intervention.}
}
}
\description{
This function calculates the clever covariate for each time point.
}
