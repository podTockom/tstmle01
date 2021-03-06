% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate_H_densities.R
\name{hEst}
\alias{hEst}
\title{h-density estimation}
\usage{
hEst(fit, i, B, t)
}
\arguments{
\item{fit}{\code{fit} object obtained by \code{initEst}.}

\item{i}{Where we are in the i loop (part of the clever covariate calculation).}

\item{B}{Number of observations to sample from P and P^*.}

\item{t}{Outcome time point of interest. It must be greater than the
intervention node A.}
}
\value{
An object of class \code{tstmle}.
\describe{
\item{h_cy}{Empirical estimate of h_cy}
\item{h_ca}{Empirical estimate of h_ca}
\item{h_cw}{Empirical estimate of h_cw}
}
}
\description{
This function evaluates the h-density, necessary for the clever covariate calculation.
}
