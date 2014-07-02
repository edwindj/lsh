#' LSHIndex
#'
#' LSHIndex
#' @export LSHIndex
LSHIndex <- setRefClass("LSHIndex",
   fields=list(data="ANY", basis="array", dim="integer", index="list"),
   methods=list(
     initialize = function(.data, L=10, k=10, w=32){
       data <<- .data
       dim <<- ncol(data)
       basis <<- array(rnorm(dim*L*k), dim = c(dim, L, k))
     }
   )
)