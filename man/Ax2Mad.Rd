% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ax_mad.R
\name{Ax2Mad}
\alias{Ax2Mad}
\title{Function to create compatible txt files for \code{MAD} or for \code{PennCNV}}
\usage{
Ax2Mad(calls.file, summary.file, annotation.file, output.name,
  output.type = "mad", metrix.file = NA, metrix.tm = 97,
  verbose = FALSE)
}
\arguments{
\item{summary.file}{Path until summary file.}

\item{annotation.file}{NetAffx Annotation database file in CSV format.}

\item{output.name}{Path where the output files will be stored (for 
\code{"mad"} as \code{output.type}) or the name of the generated file (for 
\code{"penncnv"} as \code{output.type}).}

\item{output.type}{By default \code{"mad"}. It can be set to 
\code{"penncnv"}. Used to determiner the type of file(s) the function will 
generate.}

\item{metrix.file}{If generated, path until the metrix file.}

\item{metrix.tm}{By default \code{97.0}. If specified metrix file, 
threshold to consider a probe well genotyped.}

\item{verbose}{By default FALSE. If TRUE the function will shows messages 
indicating the process.}

\item{calls.files}{Path until genotype file.}
}
\description{
This function uses the files created with Ax2APT, metrix, summary and genotype, to create a list containing a map file and a SnpMatrix with the genotype of each probe in the array. It can also be used to create a .tped file, compatible with PLINK (is in charge of the user to create the partner .tfam file).
}
\examples{
\dontrun{
# To create files compatible with MAD/R-GADA
Ax2Mad(
calls.file=paste0(output.path, .Platform$file.sep, "AxiomGT1.calls.txt"),
summary.file=paste0(output.path, .Platform$file.sep, "AxiomGT1.summary.txt"), 
annotation.file=paste0(path.lib, .Platform$file.sep, "Axiom_GW_Hu_SNP.na34.annot.csv"),
output.name="ax.mad",
output.type="mad"
)
}
\dontrun{
# To create a file compatible with PennCNV
Ax2Mad(
calls.file=paste0(output.path, .Platform$file.sep, "AxiomGT1.calls.txt"),
summary.file=paste0(output.path, .Platform$file.sep, "AxiomGT1.summary.txt"), 
annotation.file=paste0(path.lib, .Platform$file.sep, "Axiom_GW_Hu_SNP.na34.annot.csv"),
output.name="ax",
output.type="penncnv"
)
}
}

