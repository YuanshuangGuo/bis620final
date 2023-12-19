library(tidyr)
library(dplyr)

test_that("fit_logistic() works", {
  data(adsl)
  data(biomark)
  demo = left_join(adsl, biomark, by = "SUBJID")
  demo$marker = sample(c("Mutant", "Wild-type", ""), size = dim(demo)[1],
                       replace = TRUE)

  result <- fit_logistic(demo)

  expect_s3_class(result, "anova")
})
