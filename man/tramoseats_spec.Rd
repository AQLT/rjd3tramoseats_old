% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tramoseats_spec.R
\name{tramoseats_spec}
\alias{tramoseats_spec}
\alias{spec_tramo}
\alias{spec_tramoseats}
\title{TRAMO/TRAMO-SEATS Default Specification}
\usage{
spec_tramo(name = c("trfull", "tr0", "tr1", "tr2", "tr3", "tr4", "tr5"))

spec_tramoseats(
  name = c("rsafull", "rsa0", "rsa1", "rsa2", "rsa3", "rsa4", "rsa5")
)
}
\arguments{
\item{name}{the name of a predefined specification.}
}
\value{
an object of class \code{"JD3_TRAMOSEATS_SPEC"} (\code{spec_tramoseats()}) or
\code{"JD3_TRAMO_SPEC"} (\code{spec_tramo()}).
}
\description{
Set of functions(\code{spec_tramoseats()},\code{spec_tramo()}) to create default specifications associated with the TRAMO-SEATS seasonal adjustment method.
Specification creation can be restricted to the tramo part with the \code{spec_tramo()} function.
}
\details{
Without argument \code{spec_tramo()} yields a TR5 specification

without argument \code{spec_tramoseats()}  yields a RSA5 specification

The available predefined 'JDemetra+' model specifications are described in the table below:

\tabular{rrrrrrrr}{
\strong{Identifier} |\tab \strong{Log/level detection} |\tab \strong{Outliers detection} |\tab \strong{Calendar effects} |\tab \strong{ARIMA}\cr
RSA0/TR0 |\tab \emph{NA} |\tab \emph{NA} |\tab \emph{NA} |\tab Airline(+mean)\cr
RSA1/TR1 |\tab automatic |\tab AO/LS/TC |\tab \emph{NA} |\tab Airline(+mean)\cr
RSA2/TR2 |\tab automatic |\tab AO/LS/TC |\tab 2 td vars + Easter |\tab Airline(+mean)\cr
RSA3/TR3 |\tab automatic |\tab AO/LS/TC |\tab \emph{NA} |\tab automatic\cr
RSA4/TR3 |\tab automatic |\tab AO/LS/TC |\tab 2 td vars + Easter |\tab automatic\cr
RSA5/TR5 |\tab automatic |\tab AO/LS/TC |\tab 7 td vars + Easter |\tab automatic\cr
RSAfull/TRfull |\tab automatic |\tab AO/LS/TC |\tab automatic |\tab automatic
}
}
\examples{
init_spec <- spec_tramoseats()
init_spec <- spec_tramo()
init_spec <- spec_tramoseats("rsa3")
init_spec <- spec_tramo("tr3")

}
