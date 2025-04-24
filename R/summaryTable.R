#' make a summary table of dataset
#'
#' @param data_tips A dataframe that has been cleaned
#'
#' @return A tibble with all kinds of information
#' @export
#'
#' @examples
#' url <-  paste0(
#' "https://raw.githubusercontent.com/JustinTrenchcoat/",
#' "STAT_301_Personal_Project/refs/heads/main/tips.csv"
#' )
#' data_tips <- read.csv(url(url), header=TRUE)
#' summary <- summaryTable(data_tips)
#'
summaryTable <- function(data_tips) {
  return (dplyr::tibble(variable = names(data_tips),
                  type = sapply(data_tips, function(x) class(x)[1]),
                  n_levels = sapply(data_tips, function(x) if(is.factor(x)) nlevels(x) else NA),
                  have_NA = sapply(data_tips, function(x) any(is.na(x)))
    )
  )
}
