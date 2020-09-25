# one-rmd-multiple-html
One Rmd to produce several html files

The idea is to have a main .Rmd that can work for a given dataset specified as 
an external parameter. 
The title of the html file and the name of the html file will depend on this dataset.
And I wrote a function to run the .Rmd for all files in a given directory.

* The main script is function-md.r
* The .Rmd file is Test.Rmd
* The datasets, which are different files with the penguin data from Allison Horst
(https://github.com/allisonhorst/palmerpenguins) are in ./datasets

