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
     initialize = function(.data, L=10L, k=min(10L, ncol(.data)), w=32L){
       data <<- .data
       dim <<- ncol(data)
       L <<- as.integer(L)
       k <<- as.integer(k)
       basis_m <<- matrix(rnorm(dim*L*k), ncol=k*L, nrow=dim)
       basis <<- basis_m
       dim(basis) <<- c(dim,k,L)
     },
     reindex = function(){
       tcrossprod(basis, data)
     }
   )
)

