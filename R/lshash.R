
#' Create a locality sensitive hash
#' 
#' @param data \code{matrix} data to be added
#' @param k number of projections per hashtable
#' @param L number of hashtable
#' @param ... not used
#' @export
lshash <- function(data, k=32, L=min(ncol(data), 10),  ...){
}

gen_rnd_projection <- function(dim, k=32, ...){
  m <- matrix(rnorm(dim*k), ncol=dim)
  m/rowSums(m)
}


# d <- as.matrix(iris[1:4])
# a <- tcrossprod(d, gen_rnd_projection(4)) > 0
# h <- apply(a, 1, function(r) {as.bit(r)})
# iris$h <- h
# View(iris)

