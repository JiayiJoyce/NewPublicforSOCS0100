# Define working directory 
working_directory <- "working/dic/"

# get list of current file 
# names as character vector current_files 
current_files <- list.files(working_directory) 

# get file names after renaming 
# as character vector new_files 
new_files <- c("Workshop-Practice.R") 

# Use file.rename() function to rename files 
file.rename(paste0(working_directory, current_files), 
            paste0(working_directory, new_files))
