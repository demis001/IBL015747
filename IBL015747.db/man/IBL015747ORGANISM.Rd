\name{IBL015747ORGANISM}
\alias{IBL015747ORGANISM}
\alias{IBL015747ORGPKG}

\title{The Organism information for IBL015747}
\description{
  IBL015747ORGANISM is an R object that contains a single item: a
  character string that names the organism for which IBL015747 was
  built.
  IBL015747ORGPKG is an R object that contains a chararcter vector
  with the name of the organism package that a chip package depends on
  for its gene-centric annotation.
}
\details{
  Although the package name is suggestive of the organism for which it
  was built, IBL015747ORGANISM provides a simple way to programmatically
  extract the organism name.
  IBL015747ORGPKG provides a simple way to programmatically
  extract the name of the parent organism package.  The parent organism
  package is a strict dependency for chip packages as this is where the
  gene cetric information is ultimately extracted from.  The full
  package name will always be this string plus the extension ".db".  But
  most programatic acces will not require this extension, so its more
  convenient to leave it out.
}
\examples{
  IBL015747ORGANISM
  IBL015747ORGPKG
}
\keyword{datasets}

