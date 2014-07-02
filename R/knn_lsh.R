#' Do a nearest-neighbor search using a lsh index
#' 
#' @export
knn_lsh <- function(data, L=10, k=10, lsh_index=NULL, distance=NULL){
  data_index <- LSHIndex(data, L=L, k=k)
  if (is.null(lsh_index)){
    lsh_index <- data_index
  }
}