\name{IBL015747GENENAME}
\alias{IBL015747GENENAME}
\title{Map between Manufacturer IDs and Genes}
\description{
  IBL015747GENENAME is an R object that maps manufacturer
  identifiers to the corresponding gene name.
}
\details{
  Each manufacturer identifier maps to a named vector containing the gene
  name. The vector name corresponds to the manufacturer identifier. If the gene
  name is unknown, the vector will contain an \code{NA}.
  
  Gene names currently include both the official (validated by a
  nomenclature committee) and preferred names (interim selected for
  display) for genes. Efforts are being made to differentiate the two
  by adding a name to the vector.

  Mappings were based on data provided by: Entrez Gene  
  ftp://ftp.ncbi.nlm.nih.gov/gene/DATA  
  With a date stamp from the source of: 2015-Sep27
  
}

\examples{
        x <- IBL015747GENENAME
        # Get the probe identifiers that are mapped to a gene name
        mapped_probes <- mappedkeys(x)
        # Convert to a list
        xx <- as.list(x[mapped_probes])
        if(length(xx) > 0) {
          # Get the GENENAME for the first five probes
          xx[1:5]
          # Get the first one
          xx[[1]]
        }
}
\keyword{datasets}

