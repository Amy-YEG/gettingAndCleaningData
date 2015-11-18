==================================================================
The repo contains files for creating a tidy dataset out of the UCI HAR 
data set.  This project was created to fullfill the requirements by the 
"Getting and Cleaning Data" course offered by Coursera.    
The tidy dataset has the average of the selected variables for each subject 
and each activity.  Prior to creating the summarized data, the raw data 
should include both test and train data. Activity name should be used rather than the activity ID.
All the column names should be properly labelled. Only the mean and standard deviation variables should be extracted for aggregation.
==================================================================

List of Files in the repo:
- run_analysis.R : A R file which can load raw data set from URL (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
                   and output tidy dataset to a file named as "tidyData.txt".
- CookBook.MD: The cookbook describes the variable, the data, the format, and the transformation carried out. 

- README.MD: Describe the purpose of the project in the repo, list of files and how to use the file to create the tidy dataset again.


How to use files in this repo to create the tidy data set:
- Save run_analysis.R to a directory. 
- Run run_analysis.R (Make sure you have internet connection while running this script because it downloads the raw data from the URL)
- Find tidyData.txt in the working directory.  Use CookBook.MD to understand the variables in the tidyData.txt.
- More information about the source data project can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 
                     