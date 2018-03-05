##Load Packages

library(plyr)
library(dplyr)
library(data.table)
library(tidyr)

## Read All Files

filespath <- "C://Users//sharyatpanahib//coursera//R Programming//UCI HAR Dataset"

SubjectTrain <- tbl_df(read.table(paste(filespath, "train", "subject_train.txt",sep = "//")))
SubjectTest  <- tbl_df(read.table(paste(filespath, "test", "subject_test.txt",sep = "//")))

ActivityTrain <- tbl_df(read.table(paste(filespath, "train", "Y_train.txt",sep = "//")))
ActivityTest  <- tbl_df(read.table(paste(filespath, "test", "Y_test.txt",sep = "//")))

Train <- tbl_df(read.table(paste(filespath, "train", "X_train.txt",sep = "//")))
Test <- tbl_df(read.table(paste(filespath, "test", "X_test.txt",sep = "//")))


## 1)Merge the training and the test sets to create one data set.

allSubject <- rbind(SubjectTrain, SubjectTest)
setnames(allSubject, "V1", "subject")
allActivity<- rbind(ActivityTrain, ActivityTest)
setnames(allActivity, "V1", "activityNum")

dataTable <- rbind(Train, Test)

# name variables according to feature 

Features <- tbl_df(read.table(paste(filespath, "features.txt",sep = "//")))
setnames(Features, names(Features), c("featureNum", "featureName"))
colnames(dataTable) <- Features$featureName

#column names for activity labels

activityLabels<- tbl_df(read.table(paste(filespath, "activity_labels.txt",sep = "//")))
setnames(activityLabels, names(activityLabels), c("activityNum","activityName"))

#Merge columns

allSubjAct<- cbind(allSubject, allActivity)
dataTable <- cbind(allSubjAct, dataTable)


## 2)Extracts only the measurements on the mean and standard deviation for each measurement.

extractfeatures<- grep("mean|std", Features$featureName, value = TRUE)
extractfeatures<- c("subject", "activityNum", extractfeatures)
dataTable2<- dataTable[,extractfeatures]


## 3)Uses descriptive activity names to name the activities in the data set

dataTable <- merge(activityLabels, dataTable , by="activityNum", all.x=TRUE)
dataTable$activityName <- as.character(dataTable$activityName)


## 4)Appropriately labels the data set with descriptive variable names.

names(dataTable2)<-gsub("std()", "SD", names(dataTable2))
names(dataTable2)<-gsub("mean()", "MEAN", names(dataTable2))
names(dataTable2)<-gsub("^t", "time", names(dataTable2))
names(dataTable2)<-gsub("^f", "frequency", names(dataTable2))
names(dataTable2)<-gsub("Acc", "Accelerometer", names(dataTable2))
names(dataTable2)<-gsub("Gyro", "Gyroscope", names(dataTable2))
names(dataTable2)<-gsub("Mag", "Magnitude", names(dataTable2))
names(dataTable2)<-gsub("BodyBody", "Body", names(dataTable2))

## 5)creates a second, independent tidy data set with the average of each variable for each activity and each subject


subdataTable<- ddply(dataTable2,c("subject","activityNum"), numcolwise(mean))
write.table(subdataTable, "TidyData.txt", row.name=FALSE)

