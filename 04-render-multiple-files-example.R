library(quarto)
library(tidyverse)

album_inputs <- c("evermore","1989","Lover","Speak Now (Taylor's Version)", "Red,Red (Deluxe Edition),Red (Taylor's Version)")


taylor_reports <- tibble(                    # creating a data frame
  input = "02-report-template-example.qmd",  # column called input with our input file
  output_file = str_glue("{album_inputs}.html"),    # column called output_file that is named based on the album we create the report for
  execute_params = map(album_inputs, ~list(album = .))
)


pwalk(taylor_reports, quarto_render)


# album_inputs is a vector of all the albums or album groupings we want to create an individual report for. 
# Notice the lack of spaces in the last element of our vector. This is required for rendering a group of albums. 
#
# our last column is called execute_params and uses our map function again to apply ~list(album = .) to everything in our album list.
# Let's break down this function: ~list(album = .)
# The tilde is a shorthand way to show that we are using a lambda function. Without the tilde it would look like this: function (x) list(album = x)
# The period tells us that we want to use the list() function on every element in album
# So, we are creating a list of lists with each album name. 
#
# The last thing we do is use pwalk which stands for parallel walk. This is similar to map, where it applies a function to each element in a list,
# but in this case it does it in parallel (at the same time).
# As mentioned in our rendering one report example, quarto_render has a lot of possible arguments. But we want input, output_file and execute_params. 
# input is the file to render, output_file is the name of the output file and execute_params overrides the params we put in the YAML front-matter
# For us, this was "1989".


