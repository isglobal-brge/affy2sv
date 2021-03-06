% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gw_mad.R
\name{Gw2Mad}
\alias{Gw2Mad}
\title{Function to create compatible files with MAD or PennCNV from Affymetrix 
GenomeWide SNP (5.0/6.0) .CEL files.}
\usage{
Gw2Mad(cel.files, output.name, output.type = "mad", cel.platform = "affy6",
  cel.validate = TRUE, cel.genome = "hg19", cel.attime = 4,
  markers.attime = 50000, fill.24 = TRUE, verbose = FALSE)
}
\arguments{
\item{cel.files}{Location for the raw .CEL files.}

\item{output.name}{Filename in case \code{output.type} is set to 
\code{"penncnv"}.}

\item{output.type}{By default \code{"mad"} can be set to \code{"penncnv"} to
generate a file compatible with \code{PennCNV}.}

\item{cel.platform}{By default \code{"affy6"}, it expects raw .CEL files 
from GenomeWide SNP 6.0. Can be set to \code{"affy5"} to use raw .CEL files 
from GenomeWide SNP 5.0.}

\item{cel.validate}{By default \code{TRUE}. Can be set to \code{FALSE}
to avoid the step 'validation of .CEL files' from \code{clrmm}.}

\item{cel.genome}{By default set to \code{"hg19"}, can be set to 
\code{"hg18"}.}

\item{cel.attime}{By default '4'. If the package is run over an OS 
compatible with the R package \code{parallel}, number of .CEL files that 
will be processed at the same time.}

\item{markers.attime}{Number of markers processed at a time.}

\item{fill.24}{Default \code{TRUE}. It \code{TRUE} a false chromosome
24 will be added to complete the output files.}

\item{verbose}{If set to \code{TRUE}, usefull information is show.}
}
\description{
This function uses the raw .CEL files from both GenomeWide SNP 5.0 and 6.0 
arrays to create a file for each individual compatible with the R packages 
\code{MAD} and \code{R-GADA}. It can also be used to create a compatible 
file with \code{PennCNV}.
}
\examples{
\\donotrun{
# Generate MAD files
Gw2Mad(
 cel.files="gw6.raw", 
 output.name="gw6.mad", 
 output.type="mad"
)
}
\\donotrun{
# Generate PennCNV compatible file
Gw2Mad(
 cel.files="gw6.raw", 
 output.name="gw6.mad", 
 output.type="penncnv"
)
}
}

