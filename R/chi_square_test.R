
#' To test whether the marker is prognostic with respect to the death outcome.
#'
#' @param x a data frame.
#' @returns A contingency table of death vs. biomarker, a p-value indicating
#' whether the marker is prognostic with respect to the death outcome.
#' @importFrom dplyr filter select
#' @importFrom gtsummary tbl_summary
#' @importFrom stats chisq.test
#' @export
chi_square_test = function(x){
  # create a contingency table of death vs. biomarker
  # use only observations with marker "Mutant" or "Wild-type"
  x_contingency = x |>
    filter(marker %in% c("Mutant", "Wild-type")) |>
    select(DTH, marker) |>
    tbl_summary(by = DTH)
  print(x_contingency)

  # use chi-squared test to test whether marker is prognostic to death outcome
  # use only observations with marker "Mutant" or "Wild-type"
  x_prog = x |> filter(marker %in% c("Mutant", "Wild-type"))
  chisq.test(x = x_prog$marker, y = x_prog$DTH, correct = TRUE)
}




