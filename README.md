# Readme for the run_analysis.R script

This script reads a data set from the UCI Machine Learning Repository.  It downloads a zip file from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), unzips it, and prepares a tidy data set with some of the files contained in the zip.

The following is a description of the steps performed:

##Step1: Merges the training and the test sets to create one data set.
1. Download Zip
2. Unzip
3. Read Test Files
  * subject_test.txt
  * X_test.txt
  * y_test.txt
4. Read Train Files
  * subject_train.txt
  * X_train.txt
  * y_train.txt
5. Read Features Files
  * features.txt
6. Labeling Test Files Columns
7. Labeling Train Files Columns
8. Merge Test Files
9. Merge Train Files
10. Merge Both Training and Test data

## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. .
1. Get the columns needed using regular expresions

## Step 3: Uses descriptive activity names to name the activities in the data set
##
1. Assign the descriptive names by selecting each activity


##
## Step 4: Appropriately labels the data set with descriptive variable names. 
##

1. Done step 1

## Step 5: From the data set in step 4, creates a second, independent tidy data set 
##         with the average of each variable for each activity and each subject.

1. tidyAvgData <- tidyMeanStdData %>% group_by(subjectID, activity) %>% summarise_each(funs(mean))

## Step 6: write.table()

1. write.table(tidyAvgData, "./tidyAvgData.txt", row.names=FALSE)
