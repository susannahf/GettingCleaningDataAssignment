# script with same contents as run_analysis.R
# but split into functions for coding reasons

load_data <- function() {
  # load all relevant data into tables
  label_names <- read.table("UCIHARDataset/activity_labels.txt") # 6x2
  feature_names <- read.table("UCIHARDataset/features.txt") # 561x2
  # test data
  test_subjects <- read.table("UCIHARDataset/test/subject_test.txt") # 2947x1
  test_data <- read.table("UCIHARDataset/test/X_test.txt") # 2947x561
  test_labels <- read.table("UCIHARDataset/test/y_test.txt") # 2947x1
  # training data
  training_subjects <- read.table("UCIHARDataset/train/subject_train.txt") # 7352x1
  training_data <- read.table("UCIHARDataset/train/X_train.txt") # 7352x561
  training_labels <- read.table("UCIHARDataset/train/y_train.txt") # 7352x1
}
  