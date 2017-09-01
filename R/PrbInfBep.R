#' PrbInfBep function
#' @keyword PrbInfBep
#' @export
#' @examples
PrbInfBep <- function (...) {
    Dose <- TotDos()
    PrbInf <- 1 - ( (1 + Dose / ProInfBet) ^ -ProInfAlp)
}
