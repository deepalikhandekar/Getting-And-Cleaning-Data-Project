# Code book

## Working with data
Description of the run_analytics.R process

1. Loads library `plyr`
* Downloads required data from (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and creates file "UCI HAR Dataset.zip"
* Loads feature data set `features.txt` used for columns
* Loads and appends train dataset using `X_train.txt`, `y_train.txt`, `subject_train.txt`
	* `subject_train` contains the ids
	* `y_train` contains the activity labels
	* `X_train` contains the data using the feature data set as columns
* Loads and appends test dataset using `X_test.txt`, `y_test.txt`, `subject_test.txt`
	* `subject_test` contains the ids
	* `y_test` contains the activity labels
	* `X_test` contains the data using the feature data set as columns
* Appends train and test data
* Rearranges the data using id
* Loads activity labels `activity_labels.txt`
* Changes the data activity row to use the activity labels
* Extracts the `mean`,`std` into dataset1
* Saves firstDataSet into `FirstDataset.txt`
* Uses plur to calculate mean on activity for each id
* Appends `_avg` to all data columns
* Saves the tidy tiddyDataSet into `TidyDataSet.txt`

## FirstDataset.txt
contains 10299 rows and 81 columns in a default csv format.

### Columns 
* id
* activity
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.std..
* tGravityAccMag.std..
* tBodyAccJerkMag.std..
* tBodyGyroMag.std..
* tBodyGyroJerkMag.std..
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyAccMag.std..
* fBodyBodyAccJerkMag.std..
* fBodyBodyGyroMag.std..
* fBodyBodyGyroJerkMag.std..
* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyAccMag.mean..
* tGravityAccMag.mean..
* tBodyAccJerkMag.mean..
* tBodyGyroMag.mean..
* tBodyGyroJerkMag.mean..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.meanFreq...X
* fBodyAcc.meanFreq...Y
* fBodyAcc.meanFreq...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.meanFreq...X
* fBodyAccJerk.meanFreq...Y
* fBodyAccJerk.meanFreq...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.meanFreq...X
* fBodyGyro.meanFreq...Y
* fBodyGyro.meanFreq...Z
* fBodyAccMag.mean..
* fBodyAccMag.meanFreq..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyAccJerkMag.meanFreq..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroMag.meanFreq..
* fBodyBodyGyroJerkMag.mean..
* fBodyBodyGyroJerkMag.meanFreq..


## TidyDataSet.txt
contains 180 rows and 81 columns in a default csv format.

### Columns
* id
* activity
* tBodyAcc.std...X_avg
* tBodyAcc.std...Y_avg
* tBodyAcc.std...Z_avg
* tGravityAcc.std...X_avg
* tGravityAcc.std...Y_avg
* tGravityAcc.std...Z_avg
* tBodyAccJerk.std...X_avg
* tBodyAccJerk.std...Y_avg
* tBodyAccJerk.std...Z_avg
* tBodyGyro.std...X_avg
* tBodyGyro.std...Y_avg
* tBodyGyro.std...Z_avg
* tBodyGyroJerk.std...X_avg
* tBodyGyroJerk.std...Y_avg
* tBodyGyroJerk.std...Z_avg
* tBodyAccMag.std.._avg
* tGravityAccMag.std.._avg
* tBodyAccJerkMag.std.._avg
* tBodyGyroMag.std.._avg
* tBodyGyroJerkMag.std.._avg
* fBodyAcc.std...X_avg
* fBodyAcc.std...Y_avg
* fBodyAcc.std...Z_avg
* fBodyAccJerk.std...X_avg
* fBodyAccJerk.std...Y_avg
* fBodyAccJerk.std...Z_avg
* fBodyGyro.std...X_avg
* fBodyGyro.std...Y_avg
* fBodyGyro.std...Z_avg
* fBodyAccMag.std.._avg
* fBodyBodyAccJerkMag.std.._avg
* fBodyBodyGyroMag.std.._avg
* fBodyBodyGyroJerkMag.std.._avg
* tBodyAcc.mean...X_avg
* tBodyAcc.mean...Y_avg
* tBodyAcc.mean...Z_avg
* tGravityAcc.mean...X_avg
* tGravityAcc.mean...Y_avg
* tGravityAcc.mean...Z_avg
* tBodyAccJerk.mean...X_avg
* tBodyAccJerk.mean...Y_avg
* tBodyAccJerk.mean...Z_avg
* tBodyGyro.mean...X_avg
* tBodyGyro.mean...Y_avg
* tBodyGyro.mean...Z_avg
* tBodyGyroJerk.mean...X_avg
* tBodyGyroJerk.mean...Y_avg
* tBodyGyroJerk.mean...Z_avg
* tBodyAccMag.mean.._avg
* tGravityAccMag.mean.._avg
* tBodyAccJerkMag.mean.._avg
* tBodyGyroMag.mean.._avg
* tBodyGyroJerkMag.mean.._avg
* fBodyAcc.mean...X_avg
* fBodyAcc.mean...Y_avg
* fBodyAcc.mean...Z_avg
* fBodyAcc.meanFreq...X_avg
* fBodyAcc.meanFreq...Y_avg
* fBodyAcc.meanFreq...Z_avg
* fBodyAccJerk.mean...X_avg
* fBodyAccJerk.mean...Y_avg
* fBodyAccJerk.mean...Z_avg
* fBodyAccJerk.meanFreq...X_avg
* fBodyAccJerk.meanFreq...Y_avg
* fBodyAccJerk.meanFreq...Z_avg
* fBodyGyro.mean...X_avg
* fBodyGyro.mean...Y_avg
* fBodyGyro.mean...Z_avg
* fBodyGyro.meanFreq...X_avg
* fBodyGyro.meanFreq...Y_avg
* fBodyGyro.meanFreq...Z_avg
* fBodyAccMag.mean.._avg
* fBodyAccMag.meanFreq.._avg
* fBodyBodyAccJerkMag.mean.._avg
* fBodyBodyAccJerkMag.meanFreq.._avg
* fBodyBodyGyroMag.mean.._avg
* fBodyBodyGyroMag.meanFreq.._avg
* fBodyBodyGyroJerkMag.mean.._avg
* fBodyBodyGyroJerkMag.meanFreq.._avg