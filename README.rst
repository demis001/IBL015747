 R Package IBL015747
===========================

IBL015747  is an annotation package for Agilent-013223 D. rerio (Zebrafish) Oligo Microarray G2518A Option 001


* manufacturerUrl: http://www.agilent.com
* data source: http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL7735


Library used to build the annotation DB
--------------------------------------


- AnnotationForge
- org.Dr.eg.db

Build "*.tar.gz" using
---------------------

Do this on shell terminal::

    R CMD build G2518AV1.db

Installation instructions
-------------------------

Do this::

    git clone https://github.com/demis001/IBL015747.git
    cd IBL015747
    R CMD INSTALL IBL015747.db_1.0.tar.gz



Usage
-----

Do this in R::

  library(IBL015747.db)




Supported R Versions
=========================

Depends: R (>= 2.7.0), methods, AnnotationDbi (>= 1.32.3), org.Dr.eg.db (>= 3.2.3)


Authors
=======

* Dereje Jima
