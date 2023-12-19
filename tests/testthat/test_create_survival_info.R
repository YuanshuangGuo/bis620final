
test_that("chi_square_test() works", {
  data(demo)
  result <- create_survival_info(demo)

  expect_type(result, "list")
})
