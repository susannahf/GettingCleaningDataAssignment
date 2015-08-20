# Readme for getting and cleaning data assignment

All the work is done in run_analysis.R.  It doesn't take any arguments, and assumes that the UCIHARDataset folder is in the working directory.

run_analysis.R is commented to clarify each step.

I first read all the data into tables:
- label_names: 6x2 with activity labels
- feature_names: 561x2 with column names for the data
- test_subjects: 2947x1 with ID numbers for subjects in test dataset
- test_data: 2947x561 with data from test dataset
- test_labels: 2947x1 with activity codes for test dataset
- training_subjects: 7352x1 with ID numbers for subjects in the training dataset
- training_data: 7352x561 with data from training dataset
- training_labels: 7352x1 with activity codes for training dataset

I then add the subject IDs and activity codes to the two data sets test_data and training_data

I then create useful column names using feature_names (I have to add the column names for the Subject IDs and the activity codes separately as they are not in feature_names)

I then use rbind to join the data sets to make fullData

This has lots of columns we're not interested in.  I interpreted the brief to mean that the smaller set should include all features with mean() or std() in the name.  I used grep to pick these out from the vector of column names by searching for "mean(" or "std(" (I have to use two backslashes to escape the "(" character as otherwise it has a special meaning in grep).  I also search for "SubjectID" and "activity" because I want to retain these columns.  Once I have the required columns, I just subset them out to create finalData.

I then create the tidy data set tidyData by melting and casting finalData.  The tidy data set has columns for SubjectID, activity, and each of the variables in finalData.  Each row represents a combination of SubjectID and activity.  The file can be read into R using the command:
read.table("tidydata.txt",header=T)

 
