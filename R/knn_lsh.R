#' Do a nearest-neighbor search using a lsh index
#' 
#' @export
knn_lsh <- function(data, L=10, k=10, lsh_index=NULL, distance=NULL){
  if (is.null(lsh_index)){
    lsh_index <- LSHIndex(data, L=L, k=k)
  }
  
}