# This function showcases how one might write a function to be used as an
# RStudio project template. This function will be called when the user invokes
# the New Project wizard using the project template defined in the template file
# at:
#
#   inst/rstudio/templates/project/project_template.dcf
#
# The function itself just echos its inputs and outputs to a file called INDEX,
# which is then opened by RStudio when the new project is opened.
project_template <- function(path, ...) {

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  
  # create dir structure
  dir.create(paste0(path, "/bin"))
  dir.create(paste0(path, "/data"))
  dir.create(paste0(path, "/data/raw_data"))
  dir.create(paste0(path, "/data/tables"))
  dir.create(paste0(path, "/notebooks"))
  dir.create(paste0(path, "/results"))
  dir.create(paste0(path, "/theme"))
  
  # generate header
  date.create <- format(Sys.time(), "%b %d %Y")
  content <- paste0('Project from ', date.create)
  
  # write to index file
  writeLines(content, con = file.path(path, "README.MD"))

}
