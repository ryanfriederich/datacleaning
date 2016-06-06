
The data for this analysis came from the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

With the dataset coming from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To perform this analysis, I had to clean up the .txt files in the zipped file. To do that, I performed the following steps:
- Read each of the files in the /test and /train folders and combined accordingly, and assigned the values in the features.txt file as the variables of the X_ files, 
	then merged the resulting datasets into one file
- Limit the data to only the subject, activity and any mean() and std() columns
- Assign the activity the descriptive value
- Clean up the formatting of the variable names, by replacing "." with "" and putting them as lower case
- Average each of the variables by the subject and activity

Below are each of the variables in the final output dataset.  Each of the variables have been averaged by "subject" and "activity" in
the output table, but the original variable names remain to reflect what the value(s) originally represented.

subject - a number value representing each experiment subject
activity - describes the activity that was performed by the experiment subject

A description of what the original values represented, as described by features_info.txt file in the downloaded zip file:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."


tbodyaccmeanx
tbodyaccmeany
tbodyaccmeanz
tgravityaccmeanx
tgravityaccmeany
tgravityaccmeanz
tbodyaccjerkmeanx
tbodyaccjerkmeany
tbodyaccjerkmeanz
tbodygyromeanx
tbodygyromeany
tbodygyromeanz
tbodygyrojerkmeanx
tbodygyrojerkmeany
tbodygyrojerkmeanz
tbodyaccmagmean
tgravityaccmagmean
tbodyaccjerkmagmean
tbodygyromagmean
tbodygyrojerkmagmean
fbodyaccmeanx
fbodyaccmeany
fbodyaccmeanz
fbodyaccjerkmeanx
fbodyaccjerkmeany
fbodyaccjerkmeanz
fbodygyromeanx
fbodygyromeany
fbodygyromeanz
fbodyaccmagmean
fbodybodyaccjerkmagmean
fbodybodygyromagmean
fbodybodygyrojerkmagmean
tbodyaccstdx
tbodyaccstdy
tbodyaccstdz
tgravityaccstdx
tgravityaccstdy
tgravityaccstdz
tbodyaccjerkstdx
tbodyaccjerkstdy
tbodyaccjerkstdz
tbodygyrostdx
tbodygyrostdy
tbodygyrostdz
tbodygyrojerkstdx
tbodygyrojerkstdy
tbodygyrojerkstdz
tbodyaccmagstd
tgravityaccmagstd
tbodyaccjerkmagstd
tbodygyromagstd
tbodygyrojerkmagstd
fbodyaccstdx
fbodyaccstdy
fbodyaccstdz
fbodyaccjerkstdx
fbodyaccjerkstdy
fbodyaccjerkstdz
fbodygyrostdx
fbodygyrostdy
fbodygyrostdz
fbodyaccmagstd
fbodybodyaccjerkmagstd
fbodybodygyromagstd
fbodybodygyrojerkmagstd

Credit for the source data should go to:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity 
Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
ESANN 2013. Bruges, Belgium 24-26 April 2013.