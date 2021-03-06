% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cyto_mad.R
\name{Cyto2Mad}
\alias{Cyto2Mad}
\title{Function to create compatible txt files for \code{MAD} or for \code{PennCNV}}
\usage{
Cyto2Mad(cychp.files, output.name, annotation.file, output.type = "mad",
  cychp.attime = 4, bottom.quantile = 0.25, top.quantile = 0.75,
  verbose = FALSE)
}
\arguments{
\item{cychp.files}{Location where the .cychp.txt files (obtained from Cyto2APT) are placed.}

\item{output.name}{If 'output.type' is set to 'mad', location where the files compatible with MAD/R-GADa will be saved. If 'output.type' is set to 'penncnv', name of the generated file.}

\item{annotation.file}{NetAffx Annotation database file in CSV format.}

\item{output.type}{By default 'mad'. It can be set to 'penncnv'. Use to determiner the type of file(s) the function will generate.}

\item{cychp.attime}{By default '4'. If the package is run over an OS compatible with the R package 'parallel', number of cychp.txt files that will be processed at the same time.}

\item{bottom.quantile}{By default '0.25'. Bottom threshold on BAF quantile normalization.}

\item{top.quantile}{By default '0.75'. Top threshold on BAF quantile normalization.}

\item{verbose}{By default FALSE. If TRUE the function will shows messages indicating the process.}
}
\description{
This function uses the files created with \code{Cyto2APT} to create a file 
for each individual compatible with the R packages \code{MAD} and 
\code{R-GADA}. It can also be used to create a compatible file with 
\code{PennCNV}.
}
\examples{
\dontrun{
# To create files compatible with MAD/R-GADA
 Cyto2Mad(
 cychp.files="C:/Users/brge/Desktop/APT_OUT",
 output.name="C:/Users/brge/Desktop/MAD",
 annotation.file="C:/Users/brge/Desktop/lib_cytoHD/CytoScanHD_Array.na32.3.annot.csv", 
 output.type="mad",
 )
}
\dontrun{
# To create files compatible with PennCNV
 Cyto2Mad(
 cychp.files="C:/Users/brge/Desktop/APT_OUT",
 output.name="C:/Users/brge/Desktop/ASD",
 annotation.file="C:/Users/brge/Desktop/lib_cytoHD/CytoScanHD_Array.na32.3.annot.csv", 
 output.type="penncnv",
 )
}
}

