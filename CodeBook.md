# Codebook for getting and cleaning data assignment

## Data
The data comes from the UCI Human Activity Recognition Using Smartphones Dataset, which can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The final clean dataset is in finalData

## Variables

### SubjectID
The ID number of the subject (1-30)







### activity
The activity being carried out, coded as a factor.  Possible activities are:
1. WALKING 
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


## Transformations
The test and training datasets have been joined, with the test dataset first and the training dataset second.  All rows from each dataset are included.

The subject ID has been added as the first column ("Subject ID")

The activity type, coded as a factor, has been added as the last column ("activity")

Only features containing "mean(" or "std(" in the original feature name have been retained.  All other features have been discarded.
