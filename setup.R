# Run setup commands

renv::restore()

output_t_test <- function(t_test_result) {
  cat("T-Test Results\n")
  print(str_glue("T-Statistic: {round(t_test_result$statistic, 4)}"))
  print(str_glue("P-Value: {round(t_test_result$p.value, 4)}"))
  print(str_glue("Mean Group A: {round(t_test_result$estimate[1], 4)}"))
  print(str_glue("Mean Group B: {round(t_test_result$estimate[2], 4)}"))
  invisible()
}

output_chi_square <- function(chi_square_result) {

  cat("\nChi-Square Results\n")
  print(str_glue("Chi-Square: {round(chi_square_result$statistic, 4)}"))
  print(str_glue("P-Value: {round(chi_square_result$p.value, 4)}"))

  invisible()
}

output_aov <- function(anova_result) {

  cat("\nANOVA Results\n")
  coefs <- coef(anova_result)
  print(str_glue("Intercept: {round(coefs[1], 4)}"))
  print(str_glue("School B: {round(coefs[2], 4)}"))
  print(str_glue("School C: {round(coefs[3], 4)}"))

  summarised <- summary(anova_result)
  print(str_glue("F-Statistic: {round(summarised[[1]]$`F value`[1], 4)}"))
  print(str_glue("P-Value: {round(summarised[[1]]$`Pr(>F)`[1], 4)}"))

  invisible()
}

output_tukey <- function(tukeys_hsd_result) {

  invisible()
}

get_chisq_data <- function() {
  df <- read_csv("https://goo.gl/j6lRXD", show_col_types = FALSE) |>
    select(treatment, improvement)
}
