library(tidyr)
library(dplyr)

test_that("fit_gam() works", {
  data(demo)

  demo[["ATRT"]] <- factor(demo[["ATRT"]])
  demo[["marker"]] <- factor(demo[["marker"]])
  demo[["PRSURG"]] <- factor(demo[["PRSURG"]])
  demo[["SEX"]] <- factor(demo[["SEX"]])
  demo[["RACE"]] <- factor(demo[["RACE"]])

  result <- fit_gam(demo)

  expect_type(result, "list")
})
