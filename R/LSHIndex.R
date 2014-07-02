#' LSHIndex
#'
#' LSHIndex
#' @export LSHIndex
LSHIndex <- setRefClass("LSHIndex",
   fields=list(  data = "ANY"
               , basis = "array"
               , basis_m = "matrix"
               , dim="integer"
               , index="ANY"
               , L="integer"
               , k="integer"
               , w="integer"
   ),
   methods=list(
     initialize = function(.data, L=10L, k=min(10L, ncol(.data)), w=32L){
       data <<- as.matrix(.data)
       dim <<- ncol(data)
       L <<- as.integer(L)
       k <<- as.integer(k)
       basis_m <<- matrix(rnorm(dim*L*k), ncol=k*L, nrow=dim)
       basis <<- basis_m
       dim(basis) <<- c(dim,k,L)
       w <<- w
       index <<- reindex()
     },
     reindex = function(){
       d <- data %*% basis_m
       l <- apply(d, 2, function(x) unclass(cut(x, w)))
       dim(l) <- c(nrow(d), k, L)
       l
     }
   )
)

