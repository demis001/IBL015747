
\name{IBL015747_dbconn}

\alias{IBL015747_dbconn}
\alias{IBL015747_dbfile}
\alias{IBL015747_dbschema}
\alias{IBL015747_dbInfo}


\title{Collect information about the package annotation DB}

\description{
  Some convenience functions for getting a connection object to (or collecting
  information about) the package annotation DB.
}

\usage{
  IBL015747_dbconn()
  IBL015747_dbfile()
  IBL015747_dbschema(file="", show.indices=FALSE)
  IBL015747_dbInfo()
}

\arguments{
  \item{file}{
    A connection, or a character string naming the file to print to (see
    the \code{file} argument of the \code{\link[base]{cat}} function for
    the details).
  }
  \item{show.indices}{
    The CREATE INDEX statements are not shown by default.
    Use \code{show.indices=TRUE} to get them.
  }
}

\details{
  \code{IBL015747_dbconn} returns a connection object to the
  package annotation DB.  IMPORTANT: Don't call
  \code{\link[DBI:dbConnect]{dbDisconnect}} on the connection object
  returned by \code{IBL015747_dbconn} or you will break all the
  \code{\link[AnnotationDbi:AnnDbObj-class]{AnnDbObj}} objects defined
  in this package!

  \code{IBL015747_dbfile} returns the path (character string) to the
  package annotation DB (this is an SQLite file).

  \code{IBL015747_dbschema} prints the schema definition of the
  package annotation DB.

  \code{IBL015747_dbInfo} prints other information about the package
  annotation DB.
}

\value{
  \code{IBL015747_dbconn}: a DBIConnection object representing an
  open connection to the package annotation DB.

  \code{IBL015747_dbfile}: a character string with the path to the
  package annotation DB.

  \code{IBL015747_dbschema}: none (invisible \code{NULL}).

  \code{IBL015747_dbInfo}: none (invisible \code{NULL}).
}

\seealso{
  \code{\link[DBI:dbSendQuery]{dbGetQuery}},
  \code{\link[DBI:dbConnect]{dbConnect}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbconn}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbfile}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbschema}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbInfo}}
}

\examples{
  ## Count the number of rows in the "probes" table:
  dbGetQuery(IBL015747_dbconn(), "SELECT COUNT(*) FROM probes")

  IBL015747_dbschema()

  IBL015747_dbInfo()
}

\keyword{utilities}
\keyword{datasets}

