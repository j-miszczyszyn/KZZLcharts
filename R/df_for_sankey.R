#' Title
#'
#' @param x - data table
#' @param y - source column
#' @param z - target column
#'
#' @return
#' @export
#'
#' @examples
df_for_sankey <- function(x, y, z) {
  # Nie potrzeba ładować dplyr za każdym razem
  df <- x %>%
    group_by(!!rlang::sym(y), !!rlang::sym(z)) %>%
    summarise(value = n(), .groups = 'drop') %>%
    mutate(source = .data[[y]],
           target = paste(.data[[z]])) %>%
    select(source, target, value)

  return(df)
}
