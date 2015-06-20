#CodeBook

This code book describes each of the files used, the data that is described by
the analysis, and what is steop in the analysis contains.

## Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
- features_info.txt contains more details.

## Obtaining the Data Set

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones][2] 

The data used for this project can be found here:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip][1] 

## Data Included 

The UCI HAR Dataset folder contains the following files:
(*(Bolded Files Are The Only Ones Used In This Project)*)

* features_info.txt ~ Contains a brief summary about the variables used in the feature vector

* READ.txt

* **features.txt** ~ List of all features

* **activity_labels.txt** ~ Links the class labels with their activity name

* **train/X_train.txt** ~ Training set

* **train/y_train.txt** ~ Training labels

* **subject_train.txt** ~ Training subject number

* **test/X_test.txt** ~ Testing set

* **test/y_test.txt** ~ Testing labels

* **subject_test.txt** ~Testing subject number

## The **5** Main part of the data analysis

1. Merge the training and testing set

2. Extract measurements on the mean and standard deviation for each measurement

3. Use desriptive activity names to name the activities in the data set

4. Appropriately label the data set with descriptive variable names

5. From step 4, create an independent tidy data set with the average of each variable
   for each activity and each subject

## Output

The output of the file should be a txt file with column names:

Subject    
Activity  
tBodyAcc.MeanX  
tBodyAcc.MeanY  
tBodyAcc.MeanZ  
tBodyAcc.StdX  
tBodyAcc.StdY  
tBodyAcc.StdZ  
tGravityAcc.MeanX  
tGravityAcc.MeanY  
tGravityAcc.MeanZ  
tGravityAcc.StdX  
tGravityAcc.StdY  
tGravityAcc.StdZ  
tBodyAccJerk.MeanX  
tBodyAccJerk.MeanY  
tBodyAccJerk.MeanZ  
tBodyAccJerk.StdX  
tBodyAccJerk.StdY  
tBodyAccJerk.StdZ  
tBodyGyro.MeanX  
tBodyGyro.MeanY  
tBodyGyro.MeanZ  
tBodyGyro.StdX  
tBodyGyro.StdY  
tBodyGyro.StdZ  
tBodyGyroJerk.MeanX  
tBodyGyroJerk.MeanY  
tBodyGyroJerk.MeanZ  
tBodyGyroJerk.StdX  
tBodyGyroJerk.StdY  
tBodyGyroJerk.StdZ  
tBodyAccMag.Mean  
tBodyAccMag.Std  
tGravityAccMag.Mean  
tGravityAccMag.Std  
tBodyAccJerkMag.Mean  
tBodyAccJerkMag.Std  
tBodyGyroMag.Mean  
tBodyGyroMag.Std  
tBodyGyroJerkMag.Mean  
tBodyGyroJerkMag.Std  
fBodyAcc.MeanX  
fBodyAcc.MeanY  
fBodyAcc.MeanZ  
fBodyAcc.StdX  
fBodyAcc.StdY  
fBodyAcc.StdZ  
fBodyAccJerk.MeanX  
fBodyAccJerk.MeanY  
fBodyAccJerk.MeanZ  
fBodyAccJerk.StdX  
fBodyAccJerk.StdY  
fBodyAccJerk.StdZ  
fBodyGyro.MeanX  
fBodyGyro.MeanY  
fBodyGyro.MeanZ  
fBodyGyro.StdX  
fBodyGyro.StdY  
fBodyGyro.StdZ  
fBodyAccMag.Mean  
fBodyAccMag.Std  
fBodyBodyAccJerkMag.Mean  
fBodyBodyAccJerkMag.Std  
fBodyBodyGyroMag.Mean  
fBodyBodyGyroMag.Std  
fBodyBodyGyroJerkMag.Mean  
fBodyBodyGyroJerkMag.Std  


[1]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
[2]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



