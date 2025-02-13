library(quarto)
library(tidyverse)

album <- c("everemore","1989","Lover","Speak Now (Taylor's Version)", "Red,Red (Deluxe Edition),Red (Taylor's Version)")

taylor_reports <- tibble(
  input = "02-report-template-example.qmd",
  output_file = str_glue("{album}.html"),
  execute_params = map(albumn, ~list(album = .))
)

pwalk (taylor_reports, quarto_render)