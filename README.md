# Behrad - Getting and Cleaning Data Course Project
This file describes how the script works and along with the code book of the variables.

run_analysis.R

This script downloads a data set generated from the accelerometers from the Samsung Galaxy S smartphone. It combines the test and training data sets into a single data frame and returns a set of data corresponding only to the mean and the standard deviation.

In the second portion of the script, a second data set is generated from the tidy dataset which contains the mean of each variable measured grouped by the activity and subject

Instruction 

1- Read All Files:  read the test data files into R as well as other files that will be needed to add headers and activity descriptions to the final tidy data set.
2- Merge the training and the test sets to create one data set.

3- Read name variables according to feature 

4-column names for activity labels will create the descriptive labels for the training &test data sets activity

5-Extracts only the measurements on the mean and standard deviation for each measurement.

6-Appropriately labels the data set with descriptive variable names.

7- creates a second, independent tidy data set with the average of each variable for each activity and each subject

8- output the tidy data sets to space delimited text files for sharing.


# CodeBook
The file contains a total of 10299 rows and 81 variables. The data comprises of mean and standard deviations of the measured variables which have been normalized and are bound within [-1,1]. Variable names preceeded by 't' represent time domain signals while those preceeded by an 'f' represents frequency domain signals.

Table of Variables within the data file
Variable Name	Description	Unit
tBodyAcc-XYZ	Mean and std of body acceleration in XYZ directions	g
tGravityAcc-XYZ	Mean and std of gravitational acceleration in XYZ directions	g
tBodyAccJerk-XYZ	Mean and std of body acceleration Jerk in XYZ directions	g
tBodyGyro-XYZ	Mean and std of angular velocity in XYZ directions	radians/second
tBodyGyroJerk-XYZ	Mean and std of angular velocity Jerk in XYZ directions	radians/second
tBodyAccMag	Mean and std of body acceleration magnitude	g
tGravityAccMag	Mean and std of gravitational acceleration magnitude	g
tBodyAccJerkMag	Mean and std of body acceleration Jerk magnitude	g
tBodyGyroMag	Mean and std of angular velocity magnitude	radians/second
tBodyGyroJerkMag	Mean and std of angular velocity Jerk Magnitude	radians/second
fBodyAccJerk-XYZ	Frequency domain mean and std of body acceleration Jerk in XYZ directions	Hz
fBodyGyro-XYZ	Frequency domain mean and std of angular velocity in XYZ directions	Hz
fBodyAccMag	Mean and std of body acceleration magnitude in frequency domain	Hz
fBodyAccJerkMag	Mean and std of body acceleration Jerk magnitude in frequency domain	Hz
fBodyGyroMag	Mean and std of angular velocity magnitude in frequency domain	Hz
fBodyGyroJerkMag	Mean and std of angular velocity Jerk magnitude in frequency domain	Hz
activity	Description the activity performed by each subject	NA
Sources
The data used for this codebook came from [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
