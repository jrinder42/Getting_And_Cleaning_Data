# Getting And Cleaning Data

## General Information

The experiments have been carried out with a group of 30 volunteers within an age bracket 
of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have 
been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. See 'features_info.txt' for more details.

## This repository contains:

* CodeBook.md
* run_analysis.R
* README.md

## Getting Started

* [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip][1]

1. First you have to unzip the file downloaded and get a folder called UCI HAR Dataset

2. Next make sure that this folder is in your working directory

+ If you are not sure what working directory you are in, you can change it by using setwd()

## The **5** Main part of the data analysis

1. Merge the training and testing set

2. Extract measurements on the mean and standard deviation for each measurement

3. Use desriptive activity names to name the activities in the data set

4. Appropriately label the data set with descriptive variable names

5. From step 4, create an independent tidy data set with the average of each variable
for each activity and each subject

## Output

* The output is tidyData.txt


### Reference

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
  Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
  Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-
  Gasteiz, Spain. Dec 2012
  
[1]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip