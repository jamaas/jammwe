#' TotDos function
#' @keyword TotDos
#' @export
#' @examples
TotDos <- function (...) {
    ifelse (RunOys, TotOysDos <- OysDos() *
                        ifelse(VVV,
                               10^(VirVia(VirMen, VirStd,
                                          VirMin, VirMax)),
                               1),
            TotOysDos <- 0)
}


