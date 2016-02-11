datacache <- new.env(hash=TRUE, parent=emptyenv())

IBL015747 <- function() showQCData("IBL015747", datacache)
IBL015747_dbconn <- function() dbconn(datacache)
IBL015747_dbfile <- function() dbfile(datacache)
IBL015747_dbschema <- function(file="", show.indices=FALSE) dbschema(datacache, file=file, show.indices=show.indices)
IBL015747_dbInfo <- function() dbInfo(datacache)

IBL015747ORGANISM <- "Danio rerio"

.onLoad <- function(libname, pkgname)
{
    ## Connect to the SQLite DB
    dbfile <- system.file("extdata", "IBL015747.sqlite", package=pkgname, lib.loc=libname)
    assign("dbfile", dbfile, envir=datacache)
    dbconn <- dbFileConnect(dbfile)
    assign("dbconn", dbconn, envir=datacache)

    ## Create the OrgDb object
    sPkgname <- sub(".db$","",pkgname)
    txdb <- loadDb(system.file("extdata", paste(sPkgname,
      ".sqlite",sep=""), package=pkgname, lib.loc=libname),
                   packageName=pkgname)    
    dbNewname <- AnnotationDbi:::dbObjectName(pkgname,"ChipDb")
    ns <- asNamespace(pkgname)
    assign(dbNewname, txdb, envir=ns)
    namespaceExport(ns, dbNewname)
        
    ## Create the AnnObj instances
    ann_objs <- createAnnObjs.SchemaChoice("ZEBRAFISHCHIP_DB", "IBL015747", "chip IBL015747", dbconn, datacache)
    mergeToNamespaceAndExport(ann_objs, pkgname)
    packageStartupMessage(AnnotationDbi:::annoStartupMessages("IBL015747.db"))
}

.onUnload <- function(libpath)
{
    dbFileDisconnect(IBL015747_dbconn())
}

