#' LSHIndex
#'
#' LSHIndex
#' @export LSHIndex
LSHIndex <- setRefClass("LSHIndex",
   fields=list(  data = "ANY"
               , basis = "array"
               , basis_m = "matrix"
               , dim="integer"
               , index="list"
               , L="integer"
               , k="integer"
   ),
   methods=list(
     initialize = function(.data, L=10, k=10, w=32){
       data <<- .data
       dim <<- ncol(data)
       L <<- L
       k <<- k
       basis <<- array(rnorm(dim*L*k), dim = c(dim, L, k))
     },
     index = function(data){
       tcrossprod
     }
   )
)

