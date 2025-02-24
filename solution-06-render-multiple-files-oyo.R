library(quarto)
library(tidyverse)

state_inputs <- c(state.name)

outage_reports <- tibble(
  input = "solution-05-report-template-oyo.qmd",
  output_file = str_glue("{state_inputs}.html"),
  execute_params = map(state_inputs, ~list(state = .))
)

pwalk (outage_reports, quarto_render)
