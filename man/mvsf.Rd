\name{mvsf}
\Rdversion{1.1}
\alias{mvsf}
\title{Shapiro-Francia Multivariate Normality Test}
\description{
An extension of the Shapiro-Wilk multivariate normality test developed by Slawomir Jarek (\code{\link[mvnormtest:mshapiro.test]{mshapiro.test}}) to the Shapiro-Francia normality test.
}
\usage{
mvsf(m)
}
\arguments{
  \item{m}{
a numeric matrix of data values, the number of which must be for each sample between 5 and 5000.
}
}
\details{
}
\value{
A list with class \code{"htest"} containing the following components:
\item{statistic}{the value of the multivariate Shapiro-Francia statistic.}
\item{p.value}{the p-value for the test.}
\item{method}{the character string \code{"Generalized Shapiro-Francia test for Multivariate Normality"}.} 
\item{data.name}{a character string giving the name of the data.}
}
\references{
Domanski C. (1998). Wlasnosci testu wielowymiarowej normalnosci Shapiro-Wilka i jego zastosowanie. Cracow University of Economics Rector's Lectures, 37.

Jarek S. (2009). Shapiro-Wilk Multivariate Normality Test. Package \code{mvnormtest}. \url{http://cran.r-project.org/web/packages/mvnormtest/}

Royston P. (1982). An extension of Shapiro and Wilk's test for normality to large samples. Applied Statistics, 31: 115-124.

Royston P. (1993). A pocket-calculator algorithm for the Shapiro-Francia test for non-normality: an application to medicine. Statistics in Medicine, 12: 181-184.

Shapiro S.S., Francia R.S. (1972). An approximate analysis of variance test for normality. Journal of the American Statistical Association, 67: 215-216.

Thode Jr. H.C. (2002). Testing for Normality. Marcel Dekker (Ed.), New York.
}
\author{
David Delmail (\email{david.delmail@wanadoo.fr})
}
\seealso{
\code{\link[nortest:sf.test]{sf.test}} for univariate samples;
\code{\link[stats:shapiro.test]{shapiro.test}}, \code{\link[nortest:ad.test]{ad.test}}, \code{\link[nortest:cvm.test]{cvm.test}}, \code{\link[nortest:lillie.test]{lillie.test}}, \code{\link[nortest:pearson.test]{pearson.test}} for performing further univariate tests for normality;
\code{\link[mvnormtest:mshapiro.test]{mshapiro.test}} for performing another multivariate test for normality;
\code{\link[stats:qqnorm]{qqnorm}} for producing a normal quantile-quantile plot.
}
\examples{
library(mvsf)
data(EuStockMarkets)

X <- t(EuStockMarkets[15:29,1:4])
mvsf(X)
}
