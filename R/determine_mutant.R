
#' Determine whether a patient is mutant or wild-type.
#'
#' @param x a data frame.
#' @param x_vars the variables in the dataframe referencing exon mutations,
#' can be taken in as a vector.
#' @returns The original data frame with a new variable "marker" indicating
#' whether the subject is mutant, wild-type, or other.
#' @export
determine_mutant = function(x, x_vars){
  # create a new variable "marker" to record the patient marker for each patient:
  # "Mutant", "Wild-type", or ""
  x$marker = ""
  for (i in 1:nrow(x)) {
    if ("Mutant" %in% c(x[i, x_vars])) {
      x$marker[i] <- "Mutant"
    } else {
      wild_type_count <- sum(x[i, x_vars] == "Wild-type", na.rm = TRUE)
      unknown_failure_count <- sum(x[i, x_vars] %in% c("", "Failure"), na.rm = TRUE)
      if (wild_type_count > unknown_failure_count) {
        x$marker[i] <- "Wild-type"
      } else {
        x$marker[i] <- ""
      }
    }
  }
  return(x)
}
