# CodeBook for the Tidy Data resulting from run_analysis.R

This dataset is derived from the Human Activity Recognition Using Smartphones Data Set from the UCI Machime Learning Repository. You can get the original dataset [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).[1] 

All the variables except the subjectID and the activity are an average acceleration for each activity and each subject in the original dataset.  See the specific description for each variable in the original dataset. 

## Variables - Description

  * subjectID-ID of the volunteers within an age bracket of 19-48 years 
  * activity-Activities measured (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)|
  * tBodyAcc-mean()-X-Average per subjectID and activity
  * tBodyAcc-mean()-Y-Average per subjectID and activity
  * tBodyAcc-mean()-Z-Average per subjectID and activity
  * tGravityAcc-mean()-X-Average per subjectID and activity
  * tGravityAcc-mean()-Y-Average per subjectID and activity
  * tGravityAcc-mean()-Z-Average per subjectID and activity
  * tBodyAccJerk-mean()-X-Average per subjectID and activity
  * tBodyAccJerk-mean()-Y-Average per subjectID and activity
  * tBodyAccJerk-mean()-Z-Average per subjectID and activity
  * tBodyGyro-mean()-X-Average per subjectID and activity
  * tBodyGyro-mean()-Y-Average per subjectID and activity
  * tBodyGyro-mean()-Z-Average per subjectID and activity
  * tBodyGyroJerk-mean()-X-Average per subjectID and activity
  * tBodyGyroJerk-mean()-Y-Average per subjectID and activity
  * tBodyGyroJerk-mean()-Z-Average per subjectID and activity
  * tBodyAccMag-mean()-Average per subjectID and activity
  * tGravityAccMag-mean()-Average per subjectID and activity
  * tBodyAccJerkMag-mean()-Average per subjectID and activity
  * tBodyGyroMag-mean()-Average per subjectID and activity
  * tBodyGyroJerkMag-mean()-Average per subjectID and activity
  * fBodyAcc-mean()-X-Average per subjectID and activity
  * fBodyAcc-mean()-Y-Average per subjectID and activity
  * fBodyAcc-mean()-Z-Average per subjectID and activity
  * fBodyAcc-meanFreq()-X-Average per subjectID and activity
  * fBodyAcc-meanFreq()-Y-Average per subjectID and activity
  * fBodyAcc-meanFreq()-Z-Average per subjectID and activity
  * fBodyAccJerk-mean()-X-Average per subjectID and activity
  * fBodyAccJerk-mean()-Y-Average per subjectID and activity
  * fBodyAccJerk-mean()-Z-Average per subjectID and activity
  * fBodyAccJerk-meanFreq()-X-Average per subjectID and activity
  * fBodyAccJerk-meanFreq()-Y-Average per subjectID and activity
  * fBodyAccJerk-meanFreq()-Z-Average per subjectID and activity
  * fBodyGyro-mean()-X-Average per subjectID and activity
  * fBodyGyro-mean()-Y-Average per subjectID and activity
  * fBodyGyro-mean()-Z-Average per subjectID and activity
  * fBodyGyro-meanFreq()-X-Average per subjectID and activity
  * fBodyGyro-meanFreq()-Y-Average per subjectID and activity
  * fBodyGyro-meanFreq()-Z-Average per subjectID and activity
  * fBodyAccMag-mean()-Average per subjectID and activity
  * fBodyAccMag-meanFreq()-Average per subjectID and activity
  * fBodyBodyAccJerkMag-mean()-Average per subjectID and activity
  * fBodyBodyAccJerkMag-meanFreq()-Average per subjectID and activity
  * fBodyBodyGyroMag-mean()-Average per subjectID and activity
  * fBodyBodyGyroMag-meanFreq()-Average per subjectID and activity
  * fBodyBodyGyroJerkMag-mean()-Average per subjectID and activity
  * fBodyBodyGyroJerkMag-meanFreq()-Average per subjectID and activity
  * tBodyAcc-std()-X-Average per subjectID and activity
  * tBodyAcc-std()-Y-Average per subjectID and activity
  * tBodyAcc-std()-Z-Average per subjectID and activity
  * tGravityAcc-std()-X-Average per subjectID and activity
  * tGravityAcc-std()-Y-Average per subjectID and activity
  * tGravityAcc-std()-Z-Average per subjectID and activity
  * tBodyAccJerk-std()-X-Average per subjectID and activity
  * tBodyAccJerk-std()-Y-Average per subjectID and activity
  * tBodyAccJerk-std()-Z-Average per subjectID and activity
  * tBodyGyro-std()-X-Average per subjectID and activity
  * tBodyGyro-std()-Y-Average per subjectID and activity
  * tBodyGyro-std()-Z-Average per subjectID and activity
  * tBodyGyroJerk-std()-X-Average per subjectID and activity
  * tBodyGyroJerk-std()-Y-Average per subjectID and activity
  * tBodyGyroJerk-std()-Z-Average per subjectID and activity
  * tBodyAccMag-std()-Average per subjectID and activity
  * tGravityAccMag-std()-Average per subjectID and activity
  * tBodyAccJerkMag-std()-Average per subjectID and activity
  * tBodyGyroMag-std()-Average per subjectID and activity
  * tBodyGyroJerkMag-std()-Average per subjectID and activity
  * fBodyAcc-std()-X-Average per subjectID and activity
  * fBodyAcc-std()-Y-Average per subjectID and activity
  * fBodyAcc-std()-Z-Average per subjectID and activity
  * fBodyAccJerk-std()-X-Average per subjectID and activity
  * fBodyAccJerk-std()-Y-Average per subjectID and activity
  * fBodyAccJerk-std()-Z-Average per subjectID and activity
  * fBodyGyro-std()-X-Average per subjectID and activity
  * fBodyGyro-std()-Y-Average per subjectID and activity
  * fBodyGyro-std()-Z-Average per subjectID and activity
  * fBodyAccMag-std()-Average per subjectID and activity
  * fBodyBodyAccJerkMag-std()-Average per subjectID and activity
  * fBodyBodyGyroMag-std()-Average per subjectID and activity
  * fBodyBodyGyroJerkMag-std()-Average per subjectID and activity


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 
