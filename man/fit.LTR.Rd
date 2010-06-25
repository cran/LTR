\name{fit.LTR}
\alias{fit.LTR}
\title{Fit a linear-transformation of replicates model}
\description{Fit probe-wise linear models using replicate samples on two different platforms or batches and return the fit in a format suitable for application to smoothing other data.}
\usage{fit.LTR(dataset1, dataset2);}
\arguments{
  \item{dataset1}{A matrix with samples as columns and probes as rows corresponding to the space we want to map expression values *out of*}
  \item{dataset2}{A matrix with samples as columns and probes as rows corresponding to the space we want to map expression values *into*}
}
\details{dataset1 and dataset2 must have the same number of rows and columns, and must be identically ordered. Some gentle checking on the equivalence of rownames is done, but users must do proper assessment themselves.  The model fitted is, for each probe Expression(dataset2) = intercept + slope x Expression(dataset1).  Thus we are learning a transform from the space of dataset1 into the space of dataset2.}
\value{Returns a list with components:
rownames vector, length nrow(dataset1), taken from dataset1 and components
intercepts vector, length nrow(dataset1), taken from the LTR fit
slopes vector, length nrow(dataset1), taken from the LTR fit
r.squared vector, length nrow(dataset1), taken from the LTR fit
residuals matrix nrow(dataset1) x ncol(dataset1) that gives for each gene/sample tuple in dataset2 the residual of the fit
}
\references{This would be the LTR paper if/when it gets published}
\author{Paul C. Boutros}
\examples{
x <- matrix(nrow = 100, ncol = 10, data = rnorm(1000));
y <- matrix(nrow = 100, ncol = 10, data = rnorm(1000));
model.fit <- fit.LTR(x, y);
}
\keyword{models}
