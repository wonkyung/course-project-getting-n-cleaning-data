# Code book - tidy dataset

This dataset is created as part of course porject assignemnt in the course called Getting and Cleaning Data which is part of data science specialization offered by Coursera.

It is produced at February 17, 2015 by Won-Kyung Chung

## Data source

The data is originally from the experiment called "Human Activity Recognition Using Smartphones Dataset
Version 1.0"  See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for full description.

The full dataset is found here

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

average: Mean value
Standard deviation


## Full list of variables
There are 68 variables as following:

[1] "Subject"  1:30
[2] "Activity" - WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING                           
[3] "tBodyAcc.average.X"                     
[4] "tBodyAcc.average.Y"                     
[5] "tBodyAcc.average.Z"                     
[6] "tBodyAcc.standard.deviation.X"          
[7] "tBodyAcc.standard.deviation.Y"          
[8] "tBodyAcc.standard.deviation.Z"          
[9] "tGravityAcc.average.X"                  
[10] "tGravityAcc.average.Y"                  
[11] "tGravityAcc.average.Z"                  
[12] "tGravityAcc.standard.deviation.X"       
[13] "tGravityAcc.standard.deviation.Y"       
[14] "tGravityAcc.standard.deviation.Z"       
[15] "tBodyAccJerk.average.X"                 
[16] "tBodyAccJerk.average.Y"                 
[17] "tBodyAccJerk.average.Z"                 
[18] "tBodyAccJerk.standard.deviation.X"      
[19] "tBodyAccJerk.standard.deviation.Y"      
[20] "tBodyAccJerk.standard.deviation.Z"      
[21] "tBodyGyro.average.X"                    
[22] "tBodyGyro.average.Y"                    
[23] "tBodyGyro.average.Z"                    
[24] "tBodyGyro.standard.deviation.X"         
[25] "tBodyGyro.standard.deviation.Y"         
[26] "tBodyGyro.standard.deviation.Z"         
[27] "tBodyGyroJerk.average.X"                
[28] "tBodyGyroJerk.average.Y"                
[29] "tBodyGyroJerk.average.Z"                
[30] "tBodyGyroJerk.standard.deviation.X"     
[31] "tBodyGyroJerk.standard.deviation.Y"     
[32] "tBodyGyroJerk.standard.deviation.Z"     
[33] "tBodyAccMag.average"                    
[34] "tBodyAccMag.standard.deviation"         
[35] "tGravityAccMag.average"                 
[36] "tGravityAccMag.standard.deviation"      
[37] "tBodyAccJerkMag.average"                
[38] "tBodyAccJerkMag.standard.deviation"     
[39] "tBodyGyroMag.average"                   
[40] "tBodyGyroMag.standard.deviation"        
[41] "tBodyGyroJerkMag.average"               
[42] "tBodyGyroJerkMag.standard.deviation"    
[43] "fBodyAcc.average.X"                     
[44] "fBodyAcc.average.Y"                     
[45] "fBodyAcc.average.Z"                     
[46] "fBodyAcc.standard.deviation.X"          
[47] "fBodyAcc.standard.deviation.Y"          
[48] "fBodyAcc.standard.deviation.Z"          
[49] "fBodyAccJerk.average.X"                 
[50] "fBodyAccJerk.average.Y"                 
[51] "fBodyAccJerk.average.Z"                 
[52] "fBodyAccJerk.standard.deviation.X"      
[53] "fBodyAccJerk.standard.deviation.Y"      
[54] "fBodyAccJerk.standard.deviation.Z"      
[55] "fBodyGyro.average.X"                    
[56] "fBodyGyro.average.Y"                    
[57] "fBodyGyro.average.Z"                    
[58] "fBodyGyro.standard.deviation.X"         
[59] "fBodyGyro.standard.deviation.Y"         
[60] "fBodyGyro.standard.deviation.Z"         
[61] "fBodyAccMag.average"                    
[62] "fBodyAccMag.standard.deviation"         
[63] "fBodyBodyAccJerkMag.average"            
[64] "fBodyBodyAccJerkMag.standard.deviation" 
[65] "fBodyBodyGyroMag.average"           
[66] "fBodyBodyGyroMag.standard.deviation"    
[67] "fBodyBodyGyroJerkMag.average"           
[68] "fBodyBodyGyroJerkMag.standard.deviation"




