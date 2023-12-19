
test_that("determine_mutant()", {
  data(adsl)
  data(biomark)
  demo = left_join(adsl, biomark, by = "SUBJID")

  test_result <- determine_mutant(demo)
  expect_true("marker" %in% names(test_result))
})
