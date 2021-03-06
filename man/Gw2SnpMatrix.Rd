% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gw_snpmatrix.R
\name{Gw2SnpMatrix}
\alias{Gw2SnpMatrix}
\title{Function to create a SnpMatrix or a file compatible with PLINK from 
Affymetrix GenomeWide SNP (6.0/5.0) .CEL files.}
\usage{
Gw2SnpMatrix(cel.files, cel.platform = "affy6", cel.attime = 4,
  cel.validate = TRUE, output.type = "snpmatrix", output.name = NA,
  verbose = FALSE)
}
\arguments{
\item{cel.files}{Location where the \code{.CEL} files.}

\item{cel.platform}{By default \code{"affy6"}, it expects raw .CEL files 
from GenomeWide SNP 6.0. Can be set to \code{"affy5"} to use raw .CEL files 
from GenomeWide SNP 5.0.}

\item{cel.attime}{By default '4'. If the package is run over an OS 
compatible with the R package \code{parallel}, number of .CEL files that 
will be processed at the same time.}

\item{cel.validate}{By default \code{TRUE}. Can be set to \code{FALSE}
to avoid the step 'validation of .CEL files' from \code{clrmm}.}

\item{output.type}{By default \code{"snpmatrix"}. It can be set to 
\code{"plink"}. Use to determiner the type of object/file the function will 
generate.}

\item{output.name}{If \code{"output.type"} is set to \code{"plink"}, it 
must contain the name of the output \code{.tped} file (with no extension).}

\item{vervose}{By default \code{FALSE}. If TRUE the function will shows 
messages indicating the process.}
}
\description{
This function uses the raw .CEL files from both GenomeWide SNP 5.0 and 6.0 
arrays to create a list containing a map file and a SnpMatrix with the 
genotype of each probe in the array. It can also be used to create a 
\code{.tped} file, compatible with \code{PLINK} (is in charge of the user 
to create the partner \code{.tfam} file).
}
\examples{
\\donotrun{
# To create a SnpMatrix Container (a list with a map and a SnpMatrix)
smc <- Gw2SnpMatrix(
 cel.files="C:/Users/brge/Desktop/GW6",
 output.type="snpmatrix"
)
}
\\donotrun{
# To create the .tped file compatible with PLINK
Gw2SnpMatrix(
 cel.files="C:/Users/brge/Desktop/GW6",
 output.type="plink",
 output.name="C:/Users/brge/Desktop/PRAD"
)
}
}

