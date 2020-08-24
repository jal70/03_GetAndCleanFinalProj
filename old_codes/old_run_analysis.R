library(dplyr)
# Vector of variable names
namesVector <- read.csv('UCI HAR Dataset/features.txt',header = FALSE,sep = ' ')[,2]
# Subset of mean and standard deviation variables
meanStdSubset <- grep(('*mean*|*std*'),namesVector)

# activities dictionary
activities <- read.csv('UCI HAR Dataset/activity_labels.txt',header = FALSE,sep = ' ')
colnames(activities) <- c('activityID','activity')

####
## TEST DATA
####

# Read test data into a data frame
test_data <- read.fwf('UCI HAR Dataset/test/X_test.txt',skip = 0,widths = rep(16,561))
colnames(test_data) <- namesVector
# Select "mean" and "std" cols
test_data <- select(test_data,meanStdSubset)

# Load test activity info
test_activity <- read.csv('UCI HAR Dataset/test/y_test.txt',header = FALSE,sep = '')
colnames(test_activity) <- "activityID" 

# load test subject info
test_subjects <- read.csv('UCI HAR Dataset/test/subject_test.txt',header = FALSE,sep = '')
colnames(test_subjects) <- "subjectID" 

# add subject and activity info to test data
test_data <- cbind(test_subjects,test_data,test_activity)

####
## TRAIN DATA
####

# Read train data into a data frame
train_data <- read.fwf('UCI HAR Dataset/train/X_train.txt',skip = 0,widths = rep(16,561))
colnames(train_data) <- namesVector
# Select "mean" and "std" cols
train_data <- select(train_data,meanStdSubset)

# Load train activity info
train_activity <- read.csv('UCI HAR Dataset/train/y_train.txt',header = FALSE,sep = '')
colnames(train_activity) <- "activityID" 

# Load train subject info
train_subjects <- read.csv('UCI HAR Dataset/train/subject_train.txt',header = FALSE,sep = '')
colnames(train_subjects) <- "subjectID" 

# add subject and activity info to train data
train_data <- cbind(train_subjects,train_data,train_activity)

####
## MERGE TRAIN AND TEST DATA
####

# Add train and test data frames together
testPlusTrain <- rbind(test_data,train_data) %>%   
  merge(activities,.,by='activityID') %>%    # Add activity names
  select(.,-(1))  # Remove activityID
  


### not working but interesting
#gsub(' ',';',gsub('  ',';',read.csv('UCI HAR Dataset/test/X_test.txt',header = FALSE)[1,])) %>% as.character() %>% strsplit(.,";") %>% unlist

#aa <- sub('  ','',read.csv('UCI HAR Dataset/test/X_test.txt',header = FALSE)[1,]) %>%
#  gsub(' +',';',.) %>% 
#  as.character() %>% 
#  strsplit(.,";") %>%
#  unlist %>%
#  as.numeric
##  cat(.,con = 'prueba',append = TRUE)
