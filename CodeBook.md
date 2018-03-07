# CodeBook
## Description of the variables in the UCI_cleaned_data.txt file
The file contains a total of 10299 rows and 81 variables. The data comprises of mean and standard deviations of the measured variables which have been normalized and are bound within [-1,1]. Variable names preceeded by 't' represent time domain signals while those preceeded by an 'f' represents frequency domain signals.

### Table of Variables within the data file
| Variable Name | Description | Unit |
|:------------|:---------|:--:|
|tBodyAcc-XYZ |Mean and std of body acceleration in XYZ directions|g|
|tGravityAcc-XYZ| Mean and std of gravitational acceleration in XYZ directions| g|
|tBodyAccJerk-XYZ| Mean and std of body acceleration Jerk in XYZ directions| g|
|tBodyGyro-XYZ| Mean and std of angular velocity in XYZ directions| radians/second|
|tBodyGyroJerk-XYZ| Mean and std of angular velocity Jerk in XYZ directions| radians/second|
|tBodyAccMag| Mean and std of body acceleration magnitude| g|
|tGravityAccMag| Mean and std of gravitational acceleration magnitude| g|
|tBodyAccJerkMag|Mean and std of body acceleration Jerk magnitude|g|
|tBodyGyroMag|Mean and std of angular velocity magnitude|radians/second|
|tBodyGyroJerkMag| Mean and std of angular velocity Jerk Magnitude| radians/second|
|fBodyAccJerk-XYZ| Frequency domain mean and std of body acceleration Jerk in XYZ directions| Hz|
|fBodyGyro-XYZ| Frequency domain mean and std of angular velocity in XYZ directions| Hz|
|fBodyAccMag|Mean and std of body acceleration magnitude in frequency domain| Hz|
fBodyAccJerkMag|Mean and std of body acceleration Jerk magnitude in frequency domain| Hz|
|fBodyGyroMag|Mean and std of angular velocity magnitude in frequency domain| Hz|
|fBodyGyroJerkMag|Mean and std of angular velocity Jerk magnitude in frequency domain| Hz|
|activity| Description the activity performed by each subject|NA|

## Sources
The data used for this codebook came from [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. 

The file was downloaded from the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
