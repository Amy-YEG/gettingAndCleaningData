#Codebook for the Summarized UCI HAR Dataset (Tidy Dataset)


##Data file name:  
tidyData.txt
##Description: 
The tidy data set contains averages calculated for a series of feature vector variables per subject and per activity.  The variables were selected and processed from the UCI HAR raw data set.  The details of processing can be found in the "Data Transformation" section in this document.  

##Source:
Data was downloaded from URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
</br>The project information can be found via URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

##Transformation:  
A series of operations were performed on the raw data, and the R code was saved in file "run_analysis.R"                  in the same repo.  Here is a quick overview of the steps used for transforming the raw data into tidy data.
                <ol>
                <li> Download zip data from the URL, and unzip the data to working directory.</li>
                 <li>Load the 561 featured vector variable from Train dataset, combine the activity ID and Subject with the raw train data.</li>
                   <li>Load 561 feature vector variable from the Test dataset, combine the activity ID and Subject with the raw test data.</li>
                 <li> Combine the train and test data set.</li> 
                  <li>Load feature vector variable Label and use it to name the data set. Extract only variables with name containing mean() or std().</li>
                  <li>Replace the activity ID with the Activity Description.</li> 
                  <li>Create the tidy data set which has the average on each variable by subject and activity.</li>
      </ol>

##Format: 

180 observations on the following 68 variables. </br>
```
 subject 
          An Integer identified the subject (a person) in the study 
          value 1 to 30 
```
```
 activity
          Name of the Activity
          value (6 possible values): 
                  WALKING
                  WALKING_UPSTAIRS
                  WALKING_DOWNSTAIRS
                  SITTING
                  STANDING
                  LAYING
```
```
  tBodyAcc-mean-X 
          Per subject per activity, average for the Mean of variable of feature vector tBodyAcc-X 
          Numeric Value 
```
```
  tBodyAcc-mean-Y 
          Per subject per activity, average for the Mean of variable of feature vector tBodyAcc-Y 
          Numeric Value 
```
```
  tBodyAcc-mean-Z 
          Per subject per activity, average for the Mean of variable of feature vector tBodyAcc-Z 
          Numeric Value 
```
```
  tBodyAcc-std-X 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAcc-X
          Numeric Value 
```
```
  
  tBodyAcc-std-Y 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAcc-Y
          Numeric Value
  tBodyAcc-std-Z 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAcc-Z
          Numeric Value
  tGravityAcc-mean-X 
          Per subject per activity, average for the Mean of variable of feature vector tGravityAcc-X
          Numeric Value 
  tGravityAcc-mean-Y 
          Per subject per activity, average for the Mean of variable of feature vector tGravityAcc-Y
          Numeric Value 
  tGravityAcc-mean-Z 
          Per subject per activity, average for the Mean of variable of feature vector tGravityAcc-Z
          Numeric Value 
  tGravityAcc-std-X 
          Per subject per activity, average for the Standard deviation of variable of feature vector tGravityAcc-X
          Numeric Value 
  tGravityAcc-std-Y
          Per subject per activity, average for the Standard deviation of variable of feature vector tGravityAcc-Y
          Numeric Value 
  tGravityAcc-std-Z 
          Per subject per activity, average for the Standard deviation of variable of feature vector tGravityAcc-Z
          Numeric Value 
  tBodyAccJerk-mean-X
          Per subject per activity, average for the Mean of variable of feature vector tBodyAccJerk-X
          Numeric Value
  tBodyAccJerk-mean-Y
          Per subject per activity, average for the Mean of variable of feature vector tBodyAccJerk-Y
          Numeric Value
  tBodyAccJerk-mean-Z 
          Per subject per activity, average for the Mean of variable of feature vector tBodyAccJerk-Z
          Numeric Value
  tBodyAccJerk-std-X
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAccJerk-X
          Numeric Value
  tBodyAccJerk-std-Y 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAccJerk-Y
          Numeric Value
  tBodyAccJerk-std-Z
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAccJerk-Z
          Numeric Value
  tBodyGyro-mean-X 
          Per subject per activity, average for the Mean of variable of feature vector tBodyGyro-X
          Numeric Value
  tBodyGyro-mean-Y 
          Per subject per activity, average for the Mean of variable of feature vector tBodyGyro-Y
          Numeric Value
  tBodyGyro-mean-Z
          Per subject per activity, average for the Mean of variable of feature vector tBodyGyro-Z
          Numeric Value
  tBodyGyro-std-X 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyro-X
          Numeric Value
  tBodyGyro-std-Y 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyro-Y
          Numeric Value
  tBodyGyro-std-Z 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyro-Z
          Numeric Value
  tBodyGyroJerk-mean-X 
          Per subject per activity, average for the Mean of variable of feature vector tBodyGyroJerk-X
          Numeric Value
  tBodyGyroJerk-mean-Y 
          Per subject per activity, average for the Mean of variable of feature vector tBodyGyroJerk-Y
          Numeric Value
  tBodyGyroJerk-mean-Z 
          Per subject per activity, average for the Mean of variable of feature vector tBodyGyroJerk-Z
          Numeric Value
  tBodyGyroJerk-std-X 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyroJerk-X
          Numeric Value
  tBodyGyroJerk-std-Y 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyroJerk-Y
          Numeric Value
  tBodyGyroJerk-std-Z 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyroJerk-Z
          Numeric Value
  tBodyAccMag-mean 
          Per subject per activity, average for the Mean of variable of feature vector tBodyAccMag
          Numeric Value
  tBodyAccMag-std 
          Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAccMag
          Numeric Value
  tGravityAccMag-mean 
         Per subject per activity, average for the Mean of variable of feature vector tGravityAccMag
         Numeric Value
  tGravityAccMag-std 
         Per subject per activity, average for the Standard deviation of variable of feature vector tGravityAccMag
         Numeric Value
  tBodyAccJerkMag-mean
         Per subject per activity, average for the Mean of variable of feature vector tBodyAccJerkMag
         Numeric Value
  tBodyAccJerkMag-std 
        Per subject per activity, average for the Standard deviation of variable of feature vector tBodyAccJerkMag
        Numeric Value
  tBodyGyroMag-mean 
        Per subject per activity, average for the Mean of variable of feature vector tBodyGyroMag
        Numeric Value
  tBodyGyroMag-std
        Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyroMag
        Numeric Value
  tBodyGyroJerkMag-mean
        Per subject per activity, average for the Mean of variable of feature vector tBodyGyroJerkMag
        Numeric Value
  tBodyGyroJerkMag-std
        Per subject per activity, average for the Standard deviation of variable of feature vector tBodyGyroJerkMag
        Numeric Value
  fBodyAcc-mean-X 
        Per subject per activity, average for the Mean of variable of feature vector fBodyAcc-X
        Numeric Value
  fBodyAcc-mean-Y 
        Per subject per activity, average for the Mean of variable of feature vector fBodyAcc-Y
        Numeric Value
  fBodyAcc-mean-Z 
        Per subject per activity, average for the Mean of variable of feature vector fBodyAcc-Z
        Numeric Value
  fBodyAcc-std-X
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAcc-X
        Numeric Value
  fBodyAcc-std-Y 
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAcc-Y
        Numeric Value   
  fBodyAcc-std-Z 
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAcc-Z
        Numeric Value
  fBodyAccJerk-mean-X
        Per subject per activity, average for the Mean of variable of feature vector fBodyAccJerk-X
        Numeric Value
  fBodyAccJerk-mean-Y
        Per subject per activity, average for the Mean of variable of feature vector fBodyAccJerk-Y
        Numeric Value
  fBodyAccJerk-mean-Z
        Per subject per activity, average for the Mean of variable of feature vector fBodyAccJerk-Z
        Numeric Value
  fBodyAccJerk-std-X
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAccJerk-X
        Numeric Value
  fBodyAccJerk-std-Y 
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAccJerk-Y
        Numeric Value
  fBodyAccJerk-std-Z
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAccJerk-Z
        Numeric Value
  fBodyGyro-mean-X
        Per subject per activity, average for the Mean of variable of feature vector fBodyGyro-X
        Numeric Value
  fBodyGyro-mean-Y
        Per subject per activity, average for the Mean of variable of feature vector fBodyGyro-Y
        Numeric Value
  fBodyGyro-mean-Z
       Per subject per activity, average for the Mean of variable of feature vector fBodyGyro-Z 
       Numeric Value
  fBodyGyro-std-X
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyGyro-X
        Numeric Value
  fBodyGyro-std-Y
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyGyro-Y
        Numeric Value
  fBodyGyro-std-Z 
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyGyro-Z
        Numeric Value
  fBodyAccMag-mean 
        Per subject per activity, average for the Mean of variable of feature vector fBodyAccMag
        Numeric Value
  fBodyAccMag-std
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyAccMag
        Numeric Value
  fBodyBodyAccJerkMag-mean
        Per subject per activity, average for the Mean of variable of feature vector fBodyBodyAccJerkMag
        Numeric Value
  fBodyBodyAccJerkMag-std 
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyBodyAccJerkMag
        Numeric Value
  fBodyBodyGyroMag-mean
        Per subject per activity, average for the Mean of variable of feature vector fBodyBodyGyroMag
        Numeric Value
  fBodyBodyGyroMag-std
        Per subject per activity, average for the Standard deviation of variable of feature vector fBodyBodyGyroMag
        Numeric Value
     
  fBodyBodyGyroJerkMag-mean
        Per subject per activity, average for the Mean of variable of feature vector fBodyBodyGyroJerkMag
        Numeric Value
  fBodyBodyGyroJerkMag-std 
       Per subject per activity, average for the Standard deviation of variable of feature vector fBodyBodyGyroJerkMag
        Numeric Value
