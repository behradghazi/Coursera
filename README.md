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
