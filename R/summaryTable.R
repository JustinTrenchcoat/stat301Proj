summaryTable <- function(data) {
  return ( tibble(variable = names(data_tips),
                  type = sapply(data_tips, function(x) class(x)[1]),
                  n_levels = sapply(data_tips, function(x) if(is.factor(x)) nlevels(x) else NA),
                  have_NA = sapply(data_tips, function(x) any(is.na(x)))
    )
  )
}
