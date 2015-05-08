#  BrownMotion
#' BrownMotion test for R package building process
#' 
#' @param n Number of data.
#' @param distribution "normal" or "T" represent normal distribution or T distribution.
#' @param sigma standard deviation for normal distribution and t distribution.
#' @param dim dimension for dataset.
#' 
#' @export
#' @return return the dataset you want
#' @examples
#' y <- BrownMotion(10000)
#' plot(y,type='l')
BrownMotion <- function (n = 100, distribution = "normal", sigma = 1, dim = 2){
    
    stopifnot( n >= 2 )
    stopifnot( sigma >= 0 )
    
    if (distribution == "normal"){

        BrownStep <- matrix( rnorm(dim*n, 0, sigma), n, dim)
        return(apply( BrownStep, 2, cumsum))
        
    }

    if (distribution == "T"){
        
        BrownStep <- matrix( rt(dim*n, 0, sigma), n, dim)
        return(apply( BrownStep, 2, cumsum))
      
    }

}
