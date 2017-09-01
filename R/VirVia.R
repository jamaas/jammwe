#' VirVia function
#' @keyword VirVia
#' @export
#' @examples
VirVia <- function (ViaMen, ViaStd, ViaMin, ViaMax) {
    Viability <- msm::rtnorm(n = 1, mean = ViaMen, sd = ViaStd,
                       lower = ViaMin, upper = ViaMax)
}
