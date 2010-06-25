\name{fit.and.apply.LTR}
\alias{fit.and.apply.LTR}
\title{One-step fit and apply an LTR model}
\description{Take two datasets that define a relationship between two gene-expression spaces, fit the relationship, and apply to map a third gene-expression matrix from one space to the other.}
\usage{fit.and.apply.LTR(x, dataset1, dataset2);}
\arguments{
  \item{x}{A matrix with samples as columns and genes as rows; must have the same number of rows as the model in model.fit}
  \item{dataset1}{A matrix with samples as columns and probes as rows corresponding to the space we want to map expression values *into*}
  \item{dataset2}{A matrix with samples as columns and probes as rows corresponding to the space we want to map expression values *out of*}
  }
\details{x, dataset1, and dataset2 must all have the same number of rows (and in the same order). dataset1 and dataset2 must have the same number of columns (samples) and in the same order.}
\value{A gene-expression matrix of dim(x) in the space of model.fit}
\references{The LTR paper, once published}
\author{Paul C. Boutros}
\examples{
x <- matrix(nrow = 100, ncol = 10, data = rnorm(1000));
y <- matrix(nrow = 100, ncol = 10, data = rnorm(1000));
z <- y + matrix(nrow = 100, ncol = 10, data = rnorm(1000) / 10)

tmp <- fit.and.apply.LTR(
	x = x,
	dataset1 = y,
	dataset2 = z
	);
}
\keyword{models}
