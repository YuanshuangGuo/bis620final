
#' Plot Barplot of Number of Mutants
#'
#' @param x a data frame.
#' @param x_var the variable in the dataframe indicating
#' whether a subject is mutant, wild-type, or unknown. Default is "marker".
#' @returns A ggplot object showing the number of total mutant, wild-type,
#' and unknown KRAS counts per patient.
#' @importFrom ggplot2 ggplot aes geom_col geom_text labs theme_bw
#' @importFrom dplyr arrange mutate
#' @export
plot_mutant_cnt = function(x, x_var = "marker"){

  # count the number of mutant, wild-type, and unknown KRAS counts per patient
  mutant_count <- sum(x[[x_var]] == "Mutant", na.rm = TRUE)
  wild_type_count <- sum(x[[x_var]] == "Wild-type", na.rm = TRUE)
  unknown_count <- sum(x[[x_var]] == "", na.rm = TRUE)

  mutant_counts = as.data.frame(as.matrix(rep(0,3)))
  mutant_counts$name = c("Mutant", "Wild_type", "Unknown")
  mutant_counts$value = c(mutant_count, wild_type_count, unknown_count)

  # plot the counts vs. category
  mutant_counts |>
    arrange(value) |>
    mutate(name=factor(name, levels=c("Mutant", "Wild_type", "Unknown"))) |>
    ggplot(aes(x = name, y = value)) +
    geom_col() +
    geom_text(aes(label=value), vjust = -0.3) +
    labs(title = "number of mutant, wild-type, and unknown",
         x = "category", y = "count") +
    theme_bw()
}
