#' MealSize driving function
#' @keyword MealSize
#' @export
#' @examples
MealSize <- function (MesMen, MesStd, MesMin, MesMax) {
    MealSize <- msm::rtnorm(n = 1, mean = MesMen, sd = MesStd,
                       lower = MesMin, upper = MesMax)
}
