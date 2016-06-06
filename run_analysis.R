        ## Download files, unzip and create data tables
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "./dataset.zip", mode = "wb")
unzip("dataset.zip")
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE,
                         col.names = c("activity_number","activity"))
                ## Create table for Test subjects
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE,
                    col.names = features$V2)
Ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE,
                    col.names = "activity_number")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE,
                           col.names = "subject")
Xtest2 <- cbind(Ytest, Xtest)
Xtest3 <- cbind(subject_test, Xtest2)
                ## Create table for Train subjects
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE,
                    col.names = features$V2)
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE,
                     col.names = "activity_number")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE,
                            col.names = "subject")
Xtrain2 <- cbind(Ytrain, Xtrain)
Xtrain3 <- cbind(subject_train, Xtrain2)

## 1. Merge tables together
cmb <- rbind(Xtest3, Xtrain3)

## 2. Extract only mean and standard deviation measurements
m <- grep("mean",names(cmb))
s <- grep("std",names(cmb))
cmb2 <- cmb[, c(1,2,m,s)]
F <- grep("Freq",names(cmb2))
cmb3 <- cmb2[, -(F)]

## 3. Use descriptive activity names
library(plyr)
cmb4 <- join(cmb3, activities)
cmb4 <- cmb4[,c(1,69,3:68)]

## 4. Use descriptive variable names
names(cmb4) = gsub("[.]","",tolower(names(cmb4)))

## 5. Average of each variable for each activity and subject
library(dplyr)
by_sub_act <- group_by(cmb4, subject, activity)
avg <- summarize_each(by_sub_act, funs(mean))
avg