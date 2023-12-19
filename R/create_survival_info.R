
#' To create information from survival analysis
#'
#' @param data the database table with biomarker and treatment
#' @returns a survival plot
#' @importFrom survival coxph
#' @export
create_survival_info <- function(data) {
  data$marker_treat <- as.factor(data$marker_treat)
  fit = coxph(Surv(DTHDY, DTH) ~ marker_treat, data = data)
  summary(fit)
}
