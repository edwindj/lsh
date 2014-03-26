
#' Create a locality sensitive hash
#' 
#' @param data \code{matrix} data to be added
#' @param k number of projections per hashtable
#' @param L number of hashtable
#' @param ... not used
#' @export
lshash <- function(data, k=10, L=min(ncol(data), 10),  ...){
}

gen_rnd_projection <- function(dim, k, ...){
  matrix(runif(dim*k), ncol=k)
}

