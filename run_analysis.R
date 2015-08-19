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

# add test subjects
test_data <- cbind.data.frame(test_subjects,test_data,test_labels)
training_data <- cbind.data.frame(training_subjects,training_data,training_labels)

# add colnames to data
colnames(test_data) <- c("SubjectID",feature_names[,2],"activity")
colnames(training_data) <- c("SubjectID",feature_names[,2],"activity")

# add activities as labels

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set 
#  with the average of each variable for each activity and each subject.