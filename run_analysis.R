# script for Assignment in Getting and Cleaning Data

# load all relevant data into tables
label_names <- read.table("UCIHARDataset/activity_labels.txt", stringsAsFactors = F) # 6x2
feature_names <- read.table("UCIHARDataset/features.txt",stringsAsFactors = F) # 561x2
# test data
test_subjects <- read.table("UCIHARDataset/test/subject_test.txt") # 2947x1
test_data <- read.table("UCIHARDataset/test/X_test.txt") # 2947x561
test_labels <- read.table("UCIHARDataset/test/y_test.txt") # 2947x1
# training data
training_subjects <- read.table("UCIHARDataset/train/subject_train.txt") # 7352x1
training_data <- read.table("UCIHARDataset/train/X_train.txt") # 7352x561
training_labels <- read.table("UCIHARDataset/train/y_train.txt") # 7352x1

# add subject ids and activity labels
test_data <- cbind.data.frame(test_subjects,test_data,test_labels)
training_data <- cbind.data.frame(training_subjects,training_data,training_labels)

# add colnames to data
colnames(test_data) <- c("SubjectID",feature_names[,2],"activity")
colnames(training_data) <- c("SubjectID",feature_names[,2],"activity")

# join both data sets
fullData <- rbind(test_data,training_data)

# Uses descriptive activity names to name the activities in the data set
# add activities as labels
fullData$activity <- as.factor(fullData$activity)
levels(fullData$activity) <- label_names[,2]

#Extracts only the measurements on the mean and standard deviation for each measurement.
# uses grep to search for column names with the patterns:
# "mean(", "std(", "activity" and "SubjectID"
wantedcols <- grep("mean\\(|std\\(|activity|SubjectID", colnames(fullData))
finalData <- fullData[,wantedcols]

#Appropriately labels the data set with descriptive variable names. 
coln <- colnames(finalData)
coln <- sub("^f","fft",coln) # replace f at start of name with fft
coln <- sub("^t","time",coln) # replace t at start of name with time
coln <- sub("Acc","Accelerometer",coln) # replace Acc with Accelerometer
coln <- sub("Gyro","Gyroscope", coln) # replace Gyro with Gyroscope
coln <- sub("\\(\\)\\-","",coln) # remove "()-"
coln <- sub("\\(\\)","",coln) # remove leftover "()"
coln <- sub("std","StandardDeviation",coln)

colnames(finalData) <- coln # set these as column names

#From the data set in step 4, creates a second, independent tidy data set 
#  with the average of each variable for each activity and each subject.
library(reshape2)
# melt data
melted <- melt(finalData,id.vars = c("SubjectID","activity"))
# cast to make tidy data set with variables in columns, and Subjects and activities in rows
tidyData <- dcast(melted,SubjectID + activity ~ variable, mean)

# save tidy data
write.table(tidyData,"tidydata.txt",row.names = FALSE)



