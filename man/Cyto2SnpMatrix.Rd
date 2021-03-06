% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cyto_snpmatrix.R
\name{Cyto2SnpMatrix}
\alias{Cyto2SnpMatrix}
\title{Function to create a \code{SnpMatrix} or a file compatible with \code{PLINK}}
\usage{
Cyto2SnpMatrix(cychp.files, annotation.file, cychp.attime = 4,
  output.type = "snpmatrix", output.name = NA, verbose = FALSE)
}
\arguments{
\item{cychp.files}{Location where the .cychp.txt files (obtained from Cyto2APT) are placed.}

\item{annotation.file}{NetAffx Annotation database file in CSV format.}

\item{cychp.attime}{By default 4, number of \code{.cychp} fieles processed at a time.}

\item{output.type}{By default 'snpmatrix'. It can be set to 'plink'. Use to determiner the type of object/file the function will generate.}

\item{output.name}{If 'output.type' is set to 'plink', it must contain the name of the output .tped file (with no extension).}

\item{verbose}{By default FALSE. If TRUE the function will shows messages indicating the process.}
}
\description{
This function uses the files created with \code{Cyto2APT} to create a list 
containing a map file and a SnpMatrix with the genotype of each probe in 
the array. It can also be used to create a \code{.tped} file, compatible 
with \code{PLINK} (is in charge of the user to create the partner 
\code{.tfam} file).
}
\examples{
\dontrun{
# To create a SnpMatrix Container (a list with a map and a SnpMatrix)
 smc <- Cyto2SnpMatrix(
 cychp.files="C:/Users/brge/Desktop/APT_OUT", 
 annotation.file="C:/Users/brge/Desktop/lib_cytoHD/CytoScanHD_Array.na32.3.annot.csv", 
 output.type="snpmatrix"
 )
}
\dontrun{
# To create the .tped file compatible with PLINK
 Cyto2SnpMatrix(
 cychp.files="C:/Users/brge/Desktop/APT_OUT", 
 annotation.file="C:/Users/brge/Desktop/lib_cytoHD/CytoScanHD_Array.na32.3.annot.csv", 
 output.type="plink",
 output.name="ASD"
 )
}
}

