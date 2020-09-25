#### THIS WILL BE YOUR MAIN SCRIPT, THAT WILL RUN THE R MARKDOWN


### Let's say you want to use all datasets in a given folder 
### For this example, I took the penguins dataset and copied it in 3 files
### with different names
### I'm assuming that the only thing that changes is the datafile your using,
### with its respective name
### so other things like variable names are the same throughout the files
### The main Rmd file is called here Test.Rmd

run_rmd_diff_inputs <- function(path_with_data, filename){
  # filename <- files[file_number]
  dataset <- read.csv(paste0(path_with_data,filename)) # data input to the Rmd
  dataset_name <- unlist(strsplit(filename, ".csv")) 
  new_title <- paste0("Analysis blabla with ",dataset_name, " data") # title input to the Rmd
  new_filename <- paste0(dataset_name, ".html") # input name of the html file
  
  rmarkdown::render("Test.Rmd", 
                    params = list(df = dataset,set_title = new_title),
                    output_file = new_filename)
}


path_with_data <- "./datasets/"
files <- dir(path_with_data)
print(files)

# if you just want file 1:
file_number <- 2
filename <- files[file_number]
run_rmd_diff_inputs(path_with_data, filename)

# if you want to run the codes for each file and produce one html per file
sapply(files, function(x){
  run_rmd_diff_inputs(path_with_data, x)
}) 


## sources
## https://stackoverflow.com/questions/18929782/how-can-i-pass-variables-into-an-r-markdown-rmd-file
## https://stackoverflow.com/questions/31861569/setting-document-title-in-rmarkdown-from-parameters

