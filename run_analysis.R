library(data.table)
library(dplyr)
library(plyr)

##
## Step1: Merges the training and the test sets to create one data set.
##

## Download Zip
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./UCIDataset.zip", method = "curl")

## Unzip
unzip(zipfile = "./UCIDataset.zip", exdir = ".")

## Read Test Files
testS = read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
testX = read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
testY = read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

## Read Train Files
trainS = read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
trainX = read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainY = read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

## Read Features Files
features = read.table("./UCI HAR Dataset/features.txt", header = FALSE)

## Labeling Test Files Columns
names(testS)[1] <- "subjectID"
names(testY)[1] <- "activity"
names(testX) <- features$V2

## Labeling Train Files Columns
names(trainS)[1] <- "subjectID"
names(trainY)[1] <- "activity"
names(trainX) <- features$V2
rm(features)
## Merge Test Files
testMerged <- cbind(testS, testY, testX)
rm(testS)
rm(testX)
rm(testY)

## Merge Train Files
trainMerged <- cbind(trainS, trainY, trainX)
rm(trainS)
rm(trainX)
rm(trainY)

## Merge Both Training and Test data
tidyDataset <- rbind(testMerged, trainMerged)
rm(testMerged)
rm(trainMerged)

##
## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. .
##
neededColumns <- c(1, 
                   2, 
                   grep('mean()', names(tidyDataset)),
                   grep('std()', names(tidyDataset)))
tidyMeanStdData <- tidyDataset[,neededColumns]

##
## Step 3: Uses descriptive activity names to name the activities in the data set
##

tidyMeanStdData$activity[tidyMeanStdData$activity == 1] <- "WALKING"
tidyMeanStdData$activity[tidyMeanStdData$activity == 2] <- "WALKING_UPSTAIRS"
tidyMeanStdData$activity[tidyMeanStdData$activity == 3] <- "WALKING_DOWNSTAIRS"
tidyMeanStdData$activity[tidyMeanStdData$activity == 4] <- "SITTING"
tidyMeanStdData$activity[tidyMeanStdData$activity == 5] <- "STANDING"
tidyMeanStdData$activity[tidyMeanStdData$activity == 6] <- "LAYING"

##
## Step 4: Appropriately labels the data set with descriptive variable names. 
##

## Done in a previous step

##
## Step 5: From the data set in step 4, creates a second, independent tidy data set 
##         with the average of each variable for each activity and each subject.
##

tidyAvgData <- tidyMeanStdData %>% group_by(subjectID, activity) %>% summarise_each(funs(mean))

##
## Step 6: Write File
##

write.table(tidyAvgData, "./tidyAvgData.txt", row.names=FALSE)
