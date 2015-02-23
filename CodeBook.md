---
title: "CodeBook"
author: "Dzoko"
date: "Sunday, February 22, 2015"
output: html_document
---


#Code Book - Coursera - Getting & Cleaning Data 

Course Project: Human Activity Recognition Using Smartphones Dataset


##Source 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


##Data Modification

The data set provided as part of this project has been adapted from above mentioned source data.

The following modification have been made:

1.      Combination of 8 source files:

	*x_test.txt
        *y_test.txt
        *subject_test.txt     
        *x_train.txt
        *y_train.txt
        *subject_train.txt
       	*features.txt
        *activity_labels.txt

2.      Creation of a subset that includes only variables that are relevant for the course project:

	*Source data includes measurements for 561 variables
	*Subset includes data that is derived from 86 of these variables. Please refer to the Appendix A below for the complete list.

3.	The data will be returned by run_analysis.R as *.txt in the working directory. It is in the long form of tidy data. 


##Data Dictionary

Column 1:	subject - *integer*

	*Values 1 through 30 representing the 30 individuals that particpated in the study.


Column 2:	activity - *factor*

	*The 6 activities that were recorded:

		*WALKING
		*WALKING_UPSTAIRS
		*WALKING_DOWNSTAIRS
		*SITTING
		*STANDING
		*LAYING


Column 3:	measure - *factor*

	*The 86 variables that are of interest to this course project.Please refer to the Appendix A below for the complete list.


Column 4:	mean - *numeric*

	*The mean of measurements for each combination of subject-activity-measure. 

##Appendix A

	*tBodyAcc-mean()-X
	*tBodyAcc-mean()-Y
	*tBodyAcc-mean()-Z
	*tGravityAcc-mean()-X
	*tGravityAcc-mean()-Y
	*tGravityAcc-mean()-Z
	*tBodyAccJerk-mean()-X
	*tBodyAccJerk-mean()-Y
	*tBodyAccJerk-mean()-Z
	*tBodyGyro-mean()-X
	*tBodyGyro-mean()-Y
	*tBodyGyro-mean()-Z
	*tBodyGyroJerk-mean()-X
	*tBodyGyroJerk-mean()-Y
	*tBodyGyroJerk-mean()-Z
	*tBodyAccMag-mean()
	*tGravityAccMag-mean()
	*tBodyAccJerkMag-mean()
	*tBodyGyroMag-mean()
	*tBodyGyroJerkMag-mean()
	*fBodyAcc-mean()-X
	*fBodyAcc-mean()-Y
	*fBodyAcc-mean()-Z
	*fBodyAcc-meanFreq()-X
	*fBodyAcc-meanFreq()-Y
	*fBodyAcc-meanFreq()-Z
	*fBodyAccJerk-mean()-X
	*fBodyAccJerk-mean()-Y
	*fBodyAccJerk-mean()-Z
	*fBodyAccJerk-meanFreq()-X
	*fBodyAccJerk-meanFreq()-Y
	*fBodyAccJerk-meanFreq()-Z
	*fBodyGyro-mean()-X
	*fBodyGyro-mean()-Y
	*fBodyGyro-mean()-Z
	*fBodyGyro-meanFreq()-X
	*fBodyGyro-meanFreq()-Y
	*fBodyGyro-meanFreq()-Z
	*fBodyAccMag-mean()
	*fBodyAccMag-meanFreq()
	*fBodyBodyAccJerkMag-mean()
	*fBodyBodyAccJerkMag-meanFreq()
	*fBodyBodyGyroMag-mean()
	*fBodyBodyGyroMag-meanFreq()
	*fBodyBodyGyroJerkMag-mean()
	*fBodyBodyGyroJerkMag-meanFreq()
	*angle(tBodyAccMean,gravity)
	*angle(tBodyAccJerkMean),gravityMean)
	*angle(tBodyGyroMean,gravityMean)
	*angle(tBodyGyroJerkMean,gravityMean)
	*angle(X,gravityMean)
	*angle(Y,gravityMean)
	*angle(Z,gravityMean)
	*tBodyAcc-std()-X
	*tBodyAcc-std()-Y
	*tBodyAcc-std()-Z
	*tGravityAcc-std()-X
	*tGravityAcc-std()-Y
	*tGravityAcc-std()-Z
	*tBodyAccJerk-std()-X
	*tBodyAccJerk-std()-Y
	*tBodyAccJerk-std()-Z
	*tBodyGyro-std()-X
	*tBodyGyro-std()-Y
	*tBodyGyro-std()-Z
	*tBodyGyroJerk-std()-X
	*tBodyGyroJerk-std()-Y
	*tBodyGyroJerk-std()-Z
	*tBodyAccMag-std()
	*tGravityAccMag-std()
	*tBodyAccJerkMag-std()
	*tBodyGyroMag-std()
	*tBodyGyroJerkMag-std()
	*fBodyAcc-std()-X
	*fBodyAcc-std()-Y
	*fBodyAcc-std()-Z
	*fBodyAccJerk-std()-X
	*fBodyAccJerk-std()-Y
	*fBodyAccJerk-std()-Z
	*fBodyGyro-std()-X
	*fBodyGyro-std()-Y
	*fBodyGyro-std()-Z
	*fBodyAccMag-std()
	*fBodyBodyAccJerkMag-std()
	*fBodyBodyGyroMag-std()
	*fBodyBodyGyroJerkMag-std()

