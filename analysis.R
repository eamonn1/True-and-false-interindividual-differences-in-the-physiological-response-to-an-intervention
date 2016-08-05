

setwd("C:\\Users\\User\\Downloads")
file <- "eph1624-sup-0001-data.xlsx"
require(xlsx)
trt <- read.xlsx(file, 1, colClasses="numeric")  # read first sheet
trt <- trt[1:1000, 1:8]
ctr <- read.xlsx(file, 2, colClasses="numeric")   # read first sheet
ctr <- ctr[1:1000, 1:8]
ctr$Observed.Follow.up <- as.numeric(as.character(ctr$Observed.Follow.up))

multi.fun <- function(x) {
  c(mean = mean(x), sd= sd(x))
}

apply(trt[,2:8], 2, multi.fun)
apply(ctr[,2:8], 2, multi.fun)