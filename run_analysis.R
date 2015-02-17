#
#
# 1. Merge the training and the test sets to create one dataset
#    - a. Read test and training data
#    - b. Read features as column namnes
#    - c. Read y_xxx.txt as additional column
#    - d. Read subject as additional column
#    - e. Merge the two sets
#
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
#    - a. Read test and training data
#
# 3. Uses descriptive activity names to name the activities in the data set
#    - a. Read activity names from the activity_labels.txt file
#    - b. Merge activity names with the merged data
#
# 4. Appropriately labels the data set with descriptive variable names. 
#    -a. replace std() and mean() with "standard deviation" and "average"
#
# 5. From the data set in step 4, 
#     creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject.
#


testdata<- read.table("test/X_test.txt")
traindata<- read.table("train/X_train.txt")

cols <- read.table("features.txt")
colnames(testdata) <- cols[,2]
colnames(traindata) <- cols[,2]

y<-read.table("test/y_test.txt")
testdata<- cbind(testdata,  y)

y<-read.table("train/y_train.txt")
traindata<- cbind(traindata,  y)


subject <- read.table("test/subject_test.txt")
testdata<- cbind(testdata,  subject)

subject<-read.table("train/subject_train.txt")
traindata<- cbind(traindata,  subject)

colnames(traindata)[562] <- "Activity"
colnames(testdata)[562] <- "Activity"
colnames(testdata)[563] <- "Subject"
colnames(traindata)[563] <- "Subject"

mergedData <- rbind(testdata, traindata)

# Keep only mean, std, Subject and Activity columns
mergedData<- mergedData[,grepl("mean\\(|std\\(|^Subject|^Activity", names(mergedData))]

#Add activity label by merging
act_labels<-read.table("activity_labels.txt")
colnames(act_labels)<- c("Activity", "Activity_Label")
mergedData <- merge(mergedData, act_labels)
mergedData<-mergedData[,-1]
mergedData <- rename(mergedData, Activity = Activity_Label)

colnames(mergedData) <- gsub("-std\\(\\)-", " standard deviation ", as.matrix(colnames(mergedData)))
colnames(mergedData) <- gsub("-std\\(\\)", " standard deviation", as.matrix(colnames(mergedData)))
colnames(mergedData) <- gsub("-mean\\(\\)-", " average ", as.matrix(colnames(mergedData)))
colnames(mergedData) <- gsub("-mean\\(\\)", " average", as.matrix(colnames(mergedData)))


## Sort by subject & Activity
#
mergedData <- arrange(mergedData, Subject, Activity)

##
# group by subject and activity
# and summarise and compute mean value for all columns
# write the data as file named "tidydata.txt"
#
mergedData %>% group_by(Subject, Activity) %>% summarise_each(funs(mean), 1:66) %>% write.table("tidydata.txt", row.name=FALSE)

