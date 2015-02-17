# Course project, Getting and Cleaning Data - Coursera
#

## script run_analysis.R

This file can be used by source("run_analysis.R")
It should be placed in  a folder where the data from using the smartphone test results are placed.
### Files used are:
 * activity_labels.txt
 * features.txt
 * test/X_test.txt
 * test/y_test.txt
 * test/subject_test.txt
 * train/X_train.txt
 * train/y_test.txt
 * train/subject_train.txt

### Prerequisite packages
It also requires the dplyr package to be installed prior

### Result
This script produces a file named "tidydata.txt" which contains a data frame with:
   summarized average and standard deviation of all measurements by subject and activity

### Steps
1. Merge the training and the test sets to create one dataset
    - Read test and training data
    - Read features as column namnes
    - Read y_xxx.txt as additional column
    - Read subject as additional column
    - Merge the two sets

2. Extracts only the measurements on the mean and standard deviation for each measurement
    - Read test and training data

3. Uses descriptive activity names to name the activities in the data set
    - Read activity names from the activity_labels.txt file
    - Merge activity names with the merged data

4. Appropriately labels the data set with descriptive variable names. 
    - replace column names matching std() and mean() with "standard deviation" and "average"

5. From the data set in step 4, 
     - creates a second, independent tidy data set 
	 - with the average of each variable for each activity and each subject.
     - use group_by and summarise_each function from dplyr package.
     - create the outputfile "tidydata.txt" with write.table

	 
