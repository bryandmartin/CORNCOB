% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkNested.R
\name{checkNested}
\alias{checkNested}
\title{Check for nested models}
\usage{
checkNested(mod, mod_null)
}
\arguments{
\item{mod}{an object of class \code{bbdml}}

\item{mod_null}{an object of class \code{bbdml}}
}
\value{
\code{TRUE} if \code{mod_null} is nested within \code{mod}, otherwise it throws an error.
}
\description{
Check for nested models
}
\examples{
data(soil_phylum_small)
mod1 <- bbdml(formula = OTU.1 ~ DayAmdmt,
phi.formula = ~ DayAmdmt,
data = soil_phylum_small)

mod2 <- bbdml(formula = OTU.1 ~ 1,
phi.formula = ~ 1,
data = soil_phylum_small)

checkNested(mod1, mod2)
}
