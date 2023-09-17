
# for testing on Mac
sysinf <- Sys.info()

if ( sysinf['sysname'] == 'Darwin' ) {
   Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc")
}

# setup a few things, if needed

source("libraries.R")

#run render

rmarkdown::render("index.Rmd")

files <- list.files(pattern = "^[01].*\\.Rmd$")
for ( file in files ) {
   rmarkdown::render(file)
}
