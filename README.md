# dRy - Don't Repeat Yourself in R
*Karina Kumar, The University of Texas at Austin* \
*Ella Barnes, The University of Texas at Austin* \
*Christian McDonald, The University of Texas at Austin* 

This github repo is for the dRy: Don't Repeat Yourself in R session for NICAR25. This session will cover iteration techniques in R to help maximize your efficiency when doing data analysis. We will cover importing multiple files at once, creating your own unique function, and creating parameterized reports instanteously. 

We will be working with two datasets: one about Taylor Swift songs and one about event-correlated power outages across the United States. 
* The Taylor data came from [Kaggle](https://www.kaggle.com/code/jarredpriester/taylor-swift-spotify-notebook). 
* The power outages data came from [data.gov](https://catalog.data.gov/dataset/event-correlated-outage-dataset-in-america).

**And here's our playlist for this session on [Spotify](https://open.spotify.com/playlist/48d8BTRmq727mzdNAHW2Ju?si=m_8gE09HQWSziuBHqmjXHQ).**

# Packages for this session:
* tidyverse
* janitor
* quarto
* scales

# File/Folder Breakdown
* **Resources folder**: All our files for cleaning the original data from Kaggle and data.gov. Also a basic analysis for each set of data to see some questions we wanted to answer.
* **data-raw-taylor & data-raw-power**: The raw downloaded data from the data sources.
* **data-processed-taylor & data-processed-power**: the cleaned data for importing for the class
* **docs**: Where all the html files go for rendering
* **.gitignore**: specifies files to NOT track
* **01-importing-and-functions.qmd**: instructions and oyo lesson for importing multiple files at once and creating your own function
* **02-report-template-example.qmd**: report template example for parameterized reports
* **03-render-one-file-example.R**: render file example for generating a single parameterized report
* **04-render-multiple-files-example.R**: render file example for generating multiple parameterized reports
* **05-report-template-oyo.qmd**: report template oyo lesson for parameterized reports
* **06-render-multiple-files-oyo.R**: render file oyo lesson for generating multiple parameterized reports
* **README.md**: info about this repo
* **_quarto.yml**: quarto website setup
* **dRy.Rproj**: the R project file
* **index.qmd**: the about page
* **solution-01-importing-and-functions.qmd**: solutions to notebook 01
* **solution-05-report-template-oyo.qmd**: solutions to notebook 05
* **solution-06-render-multiple-files-oyo.R**: solutions to render file 06
* **styles.css**: styles for building the site
