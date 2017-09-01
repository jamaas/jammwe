#' First driving function
#' @keyword first
#' @export
#' @examples

rm(list=ls())

## load required packages
cl <- doMPI::startMPIcluster(count=10)
doMPI::registerDoMPI(cl)

## Set the size of our microsimulation "population size"
PopSize <- 100
## Set number of Days to run simulation
DayNum <-365
## Number of individual simulations to perform
NumSim <- 10

## Set function to run
RunOys <- TRUE

## Output name, the label to go on the output dataset
OutDatNam <- "Demo1"

Calcs()

doMPI::closeCluster(cl)
## shut down the cluster and the execution
q(save="no")


