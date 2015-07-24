#How does the run_analysis.R script works?


##The functionality of the script

This script is done according to obtain a tidy data of a group of files of data. According to obtain the tidy data 
I have done this script. 

FIrst of all I load all the data files and merge the data according to the dimensions and also according to the data. So, we achieved a huge amount of data 
in an unique variable. 

Then I have submitted the data I need from the set of data. Once I have this data subsetted, I sort the data according to the activity and the subject of the data. 
Then I calculate the mean of each varible taking in account the subject and the activity and finally I save this new data in a new variable which is going to be saved in a TXT format. 

##Steps of the script

* Load the data

* Merge the data

* Subset the data

* Srrt the data

* Take the data which is wanted

* Apply the operation which is required

* Save the new data

##How can I load the file?

If you want to load the script, first you have to put the script in the workdirectory of R where you are working, then, you have to execute the following command

* source("run_analysis.R")

If you use the command specified, you will obtain the file tidy_text.txt in your working directory, this file is the final file which is wanted. 

In this case, the only packet you need is loaded in the script. This packets is the "plyr" packet. If you want to install it you have to use the following commad

*install.packages("plyr")