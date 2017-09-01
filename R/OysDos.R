#' OysDos function
#' @keyword OysDos
#' @export
#' @examples
OysDos  <- function (...) {
    Prb <- ifelse (rpois ( n = 1, PrbMel ) > 0,
                   ifelse (rbinom (n = 1, size = 1, p = OysPos) > 0,
                           results <- OysCal(),
                           0),
                   0)
}
