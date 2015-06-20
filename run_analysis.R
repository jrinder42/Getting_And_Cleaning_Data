library(data.table)
library(plyr)

## Make sure the UCI HAR Dataset folder is in the working directory

# Part 1 ~ Merge the training and testing sets to create one data set

## Reads in activity and feature names
data.FeatureNames <- read.table("UCI HAR Dataset/features.txt", 
								col.names = c("FeatureID", "FeatureNames"))
data.ActivityNames <- read.table("UCI HAR Dataset/activity_labels.txt",
								 col.names = c("ActivityID", "ActivityNames"))

## Reads in all of the training data
data.Subject_Train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = F)
data.Features_Train <- read.table("UCI HAR Dataset/train/X_train.txt", header = F)
#names(data.Features_Train) <- data.FeatureNames
data.Activity_Train <- read.table("UCI HAR Dataset/train/y_train.txt", header = F)

## Reads in all of the testing data
data.Subject_Test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = F)
data.Features_Test <- read.table("UCI HAR Dataset/test/X_test.txt", header = F)
#names(data.Features_Test) = data.FeatureNames
data.Activity_Test <- read.table("UCI HAR Dataset/test/y_test.txt", header = F)

data.Subject <- rbind(data.Subject_Train, data.Subject_Test)
data.Features <- rbind(data.Features_Train, data.Features_Test)
data.Activity <- rbind(data.Activity_Train, data.Activity_Test)

## Part 3 ~ Use descriptive activity names to name variables in the data set

colnames(data.Subject) <- "Subject"
colnames(data.Features) <- data.FeatureNames$FeatureNames
colnames(data.Activity) <- "Activity"

data <- cbind(data.Features, data.Activity, data.Subject)

## Part 2 ~ Extract measurements on the mean and standard deviation for the data set

column.Mean_Std <- data[, grepl("mean|std", names(data))]

## Part 4 ~ Appropriately label the data set with descriptive variable names

column.Mean_Std <- cbind(data.Subject, data.Activity, column.Mean_Std)
#turn the activities column from numbers to ActivityNames
column.Mean_Std$Activity <- data.ActivityNames[column.Mean_Std$Activity, "ActivityNames"]

#Removes the () and - from the names of the column.Mean_Std data frame
names(column.Mean_Std) <- gsub("[\\(\\),\\-]", "", names(column.Mean_Std))

names(column.Mean_Std) <- gsub("BodyBody", "Body", names(column.Mean_Std))
names(column.Mean_Std) <- gsub("mean", ".Mean", names(column.Mean_Std))
names(column.Mean_Std) <- gsub("std", ".Std", names(column.Mean_Std))

## Part 5 ~ Create an independent tidy data set with the average of each 
# 			variable for each activity and each subject

# We compute the mean of every column but the first and the second while splitting
# by the Subject and Activity. We start at the 3rd column becasue we do 
# not want to calculate the mean of the first two columns
tidyData <- aggregate(column.Mean_Std[, 3:ncol(column.Mean_Std)],
					  by = list(Subject = column.Mean_Std$Subject, 
					  		  Activity = column.Mean_Std$Activity),
					  FUN = mean)
tidyData <- arrange(tidyData, Subject)


## Write data

write.table(tidyData, file = "tidyData.txt", row.names = F)