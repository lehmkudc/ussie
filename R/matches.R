

#' Makes a standard tibble for league data
#'
#' @param data_engsoc dataframe from engsoccerdata package
#' @param country a country one of spain, italy, germany, england, holland
#'
#' @return tibble, dataframe with columns 'country', 'date', 'season', 'tier',
#'   'home', 'visitor','goals_home', etc.
#' @export
#'
#' @examples
#' uss_make_matches( engsoccerdata::spain, "Spain" )
uss_make_matches <- function(data_engsoc, country) {
  # Test
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      tier = factor(tier, levels = c("1", "2", "3", "4")),
      country = as.character(country),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}
