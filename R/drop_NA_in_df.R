#' Title
#'
#' @param x - data frame
#'
#' @return
#' @export
#'
#' @examples
drop_NA_in_df=function(x){
  library(dplyr)
  x=x %>%
    drop_na(source) %>%
    drop_na(target)
  return(x)
}
