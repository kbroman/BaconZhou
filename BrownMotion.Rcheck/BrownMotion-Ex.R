pkgname <- "BrownMotion"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('BrownMotion')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("BrownMotion")
### * BrownMotion

flush(stderr()); flush(stdout())

### Name: BrownMotion
### Title: BrownMotion test for R package building process
### Aliases: BrownMotion

### ** Examples

y <- BrownMotion(10000)
plot(y,type='l')



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
