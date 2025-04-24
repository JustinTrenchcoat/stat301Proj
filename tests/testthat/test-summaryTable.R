test_that("summaryTable works correctly on mixed-type data", {
  url <- "https://raw.githubusercontent.com/JustinTrenchcoat/STAT_301_Personal_Project/refs/heads/main/tips.csv"
  data_tips <- read.csv(url(url), header = TRUE)
  # convert character variables into factors
  result <- summaryTable(data_tips)

  expect_s3_class(result, "tbl_df")
  # These are known from examining the dataset
  expect_equal(unname(result$type["sex"]), "factor")
  expect_false(any(result$have_NA))               # No missing values in this dataset
})
