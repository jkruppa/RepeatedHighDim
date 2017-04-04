##' Global tests for expression data of high-dimensional sets of molecular features.
##' Global tests for expression data of high-dimensional sets of molecular features.
##' @references
##' \itemize{
##' \item Brunner, E (2009) Repeated measures under
##' non-sphericity. Proceedings of the 6th St. Petersburg Workshop on
##' Simulation, 605-609.
##' \item Jung K, Becker B, Brunner B and Beissbarth T (2011)
##' Comparison of Global Tests for Functional Gene Sets in Two-Group
##' Designs and Selection of Potentially Effect-causing
##' Genes. Bioinformatics, 27, 1377-1383.
##' \item Jung K, Dihazi H, Bibi A, Dihazi GH and Bei{\\ss}barth T (2014)
##' Adaption of the Global Test Idea to Proteomics Data with Missing
##' Values. Bioinformatics, 30, 1424-30.
##' \item Kruppa J, Kramer K, Bei{\\ss}barth T and Jung K (2016) A
##' simulation framework for correlated count data of feature subsets
##' in high-throughput sequencing or proteomics
##' experiments. Statistical Applications in Genetics and Molecular
##' Biology, 15, 401-414
##' }
##' @docType package
##' @name RepeatedHighDim-package
##' @examples
##' ### Global comparison of a set of 100 genes between two experimental groups.
##' X1 = matrix(rnorm(1000, 0, 1), 10, 100)
##' X2 = matrix(rnorm(1000, 0.1, 1), 10, 100)
##' RHD = RepeatedHighDim(X1, X2, paired=FALSE)
##' summary(RHD)
##'
##' ### Global comparison of a set of 100 proteins between two
##' ### experimental groups, where (tau * 100) percent of expression
##' ### levels are missing.
##' n1 = 10
##' n2 = 10
##' d = 100
##' tau = 0.1
##' X1 = t(matrix(rnorm(n1*d, 0, 1), n1, d))
##' X2 = t(matrix(rnorm(n2*d, 0.1, 1), n2, d))
##' X1[sample(1:(n1*d), tau * (n1*d))] = NA
##' X2[sample(1:(n2*d), tau * (n2*d))] = NA
##' GlobTestMissing(X1, X2, nperm=100)
NULL
