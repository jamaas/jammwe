#' OysCal function
#' @keyword OysCal
#' @export
#' @examples
OysCal <- function (...){
        ms <- MealSize(MesMen, MesStd, MesMin, MesMax)
        gc <- ConGld()
        gp <- PrpGld()
        oc <- gc * gp
        dose <- ms * oc
    }
