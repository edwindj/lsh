#' LSHIndex
#'
#' @export
LSHIndex <- setRefClass("LSHIndex",
   fields=c("data", "index"),
   methods=list(
     initialize = function(.data, L=10, k=10, w=32){
       data <<- .data
     }
   )
)