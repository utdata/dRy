library(quarto)

quarto_render(
  input = "02-report-template-example.qmd",
  output_file = "album_test.html",
  execute_params = list(album = "1989,1989 (Deluxe)")
)
