#' Calcs and acomb functions
#' @keyword Calcs
#' @export
#' @examples
Calcs <- function (...) {
    results <- data.frame ( foreach::`%dopar%`(
             foreach::`%:%`(foreach::foreach(j = 1:NumSim, .combine = acomb,
                                             .options.mpi=opts1),
                            foreach::foreach (i = 1:PopSize, .combine=rbind,
                                    .options.mpi=opts2,
                                    .export = c (ls(globalenv())),
                                    .packages = c("zoo", "msm", "FAdist"))),
                            {
                               output <- if(rbinom(1,1,ProSecPos) > 0)
                                      replicate(DayNum, eval(call("PrbInfBep")))
                                      else rep(0, DayNum)
                               output2 <- data.frame(khf(output))
                            }
             )
             )
             saveRDS(results, file = paste("./outputs/", OutDatNam ,"_",
                PopSize, "_", NumSim, "_", format(Sys.time(), "%d_%m_%Y"),
                 ".rds", sep=""))
}

