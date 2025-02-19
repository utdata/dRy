library(quarto)

quarto_render(
  input = "02-report-template-example.qmd", # What file we're wanting to use.
  output_file = "album_test.html", # Name of rendered file.
  execute_params = list(album = "1989,1989 (Deluxe)") # All of the parameters you are hoping to filter for.
)
