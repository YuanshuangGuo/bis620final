library(tidyr)
library(dplyr)

test_that("fit_gbm() works", {
  data(demo)

  demo[["ATRT"]] <- factor(demo[["ATRT"]])
  demo[["marker"]] <- factor(demo[["marker"]])
  demo[["AGE"]] <- factor(demo[["AGE"]])
  demo[["PRSURG"]] <- factor(demo[["PRSURG"]])
  demo[["SEX"]] <- factor(demo[["SEX"]])
  demo[["RACE"]] <- factor(demo[["RACE"]])

  result <- fit_gbm(demo)

  expect_type(result, "list")
})
