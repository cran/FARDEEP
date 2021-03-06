% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tuningBIC.R
\name{tuningBIC}
\alias{tuningBIC}
\title{Tuning parameter k in function alts using Bayesian Information Criterion (BIC) with some adjustment.}
\usage{
tuningBIC(x, y, alpha1 = 0.1, alpha2 = 1.5, up = 10, low = 1,
  nn = TRUE, intercept = TRUE, lognorm = TRUE)
}
\arguments{
\item{x}{input matrix of predictors with n rows and p columns.}

\item{y}{input vector of dependent variable with length n.}

\item{alpha1}{parameter used to adjust the upper bound of outliers. Take value from 0 to 1, default 0.1.}

\item{alpha2}{parameter used to adjust the lower bound of outliers. Take value larger than 1, default 1.5.}

\item{up}{upper bound of parameter k in function alts, default 10.}

\item{low}{lower bound of parameter k in function alts, default 1.}

\item{nn}{whether coefficients are non-negative, default TRUE.}

\item{intercept}{whether intercept is included in model, default TRUE.}

\item{lognorm}{whether noise is log-normal distributed, default TRUE.}
}
\value{
k:   tuning result of parameter k for function alts.
}
\description{
Tuning parameter k in function alts using Bayesian Information Criterion (BIC) with some adjustment.
}
\examples{
library(FARDEEP)
samp = sample.sim(n = 500, p = 20, sig = 1, a1 = 0.1, a2 = 0.2, nn = TRUE, intercept = TRUE)
k = tuningBIC(samp$x, samp$y, lognorm = FALSE)
}
\references{
Yuning Hao, Ming Yan, Blake R. Heath, Yu L. Lei and Yuying Xie. Fast and Robust Deconvolution of Tumor Infiltrating Lymphocyte from Expression Profiles using Least Trimmed Squares. <doi:10.1101/358366>
}
\author{
Yuning Hao, Ming Yan, Blake R. Heath, Yu L. Lei and Yuying Xie
}
