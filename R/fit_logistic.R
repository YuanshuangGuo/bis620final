
#' To model a logistic regression model on the joint effect
#' of biomarker and treatment
#'
#' @param x the database table with biomarker and treatment
#' @returns a model summary
#' @importFrom stats glm anova binomial
#' @export
fit_logistic = function(x){
  x_joint = x |>
    filter(marker %in% c("Mutant", "Wild-type"))
  glm(DTH ~ ATRT * marker, data = x, family = binomial) |>
    anova(test="Chisq")
}
