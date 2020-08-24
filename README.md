This repo contains procesed data from *Human Activity Recognition Using Smartphones Dataset* repository in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unziped into UCI HAR Dataset folder

All data procesing is perfomed with run_analysis.R script, which uses the dplyr library. Output tidy data files are summary_HAR_data.csv and summary_HAR_data_mean.csv

The basic script structure is the following:

* Load variable names from features.txt file and select mean and standard deviation variable names.
* Read file activity_labels.txt with activity names into a data frame.
* Load test data
    * Load X_test.txt and select mean and st columns
    * Load y_test.txt (activity ID)
    * Load subject_test.txt (subjects ID)
    * merge together
* Same steps for loading train data

* Train and test data are rbinded, and a column with activity names is added.

* Final data frame is saved into summary_HAR_data.csv file

* Data are grouped by subject and activity. Mean over groups are performed and saved into summary_HAR_data_mean.csv file