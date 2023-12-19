
#' To create a KM plot for survival analysis
#'
#' @param data the database table with biomarker and treatment
#' @returns a survival plot
#' @importFrom survminer ggsurvplot
#' @importFrom survival survfit Surv
#' @export
create_KM_plot <- function(data) {
  surv_plot <- ggsurvplot(
    survfit(Surv(DTHDY, DTH) ~ marker_treat, data = data),
    data = data,
    conf.int = TRUE
  )
  surv_plot$plot$theme$legend.position = "top"
  surv_plot$plot$theme$legend.direction ="vertical"
  surv_plot$plot$theme$legend.direction = "vertical"
  print(surv_plot)
}

