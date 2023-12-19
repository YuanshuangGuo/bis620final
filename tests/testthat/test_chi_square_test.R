library(dplyr)

test_that("chi_square_test() works", {
  data(demo)
  result <- chi_square_test(demo)

  expect_type(result, "list")
})
