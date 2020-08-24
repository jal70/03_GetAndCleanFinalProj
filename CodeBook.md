From file features_info.txt:
---

Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

---

## File summary_HAR_data.csv
Contains procesed measurements of 6 activities from 30 subjects for the variable set (10299 observations, 81 variables)

## File summary_HAR_data_mean.csv
Contains mean values over subjects and activities (6 x 30 = 180 records, 81 variables)


## Variables

### Activity

* activity (Any of the 6 activities performed):
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING

### Subject

* subjectID (unique identifiers 1:30)

## Time domain
* Accelaration units: g
* Jerk unitis: g/s
* Angular velocity (gyroscope) units: rad/s

### Mean and sd triaxial body acceleration
* tBodyAcc_mean__X
* tBodyAcc_mean__Y
* tBodyAcc_mean__Z
* tBodyAcc_std__X
* tBodyAcc_std__Y
* tBodyAcc_std__Z

### Mean and sd triaxial gravity acceleration
* tGravityAcc_mean__X
* tGravityAcc_mean__Y
* tGravityAcc_mean__Z
* tGravityAcc_std__X
* tGravityAcc_std__Y
* tGravityAcc_std__Z

### Mean and sd triaxial Jerk
* tBodyAccJerk_mean__X
* tBodyAccJerk_mean__Y
* tBodyAccJerk_mean__Z
* tBodyAccJerk_std__X
* tBodyAccJerk_std__Y
* tBodyAccJerk_std__Z

### Mean and sd triaxial body gyroscope
* tBodyGyro_mean__X
* tBodyGyro_mean__Y
* tBodyGyro_mean__Z
* tBodyGyro_std__X
* tBodyGyro_std__Y
* tBodyGyro_std__Z

### Mean and sd triaxial body gyroscope Jerk
* tBodyGyroJerk_mean__X
* tBodyGyroJerk_mean__Y
* tBodyGyroJerk_mean__Z
* tBodyGyroJerk_std__X
* tBodyGyroJerk_std__Y
* tBodyGyroJerk_std__Z

### Mean and sd body acceleration magnitude
* tBodyAccMag_mean_
* tBodyAccMag_std_

### Mean and sd gravity acceleration magnitude
* tGravityAccMag_mean_
* tGravityAccMag_std_

### Mean and sd body Jerk magnitude
* tBodyAccJerkMag_mean_
* tBodyAccJerkMag_std_

### Mean and sd body gyroscope magnitude
* tBodyGyroMag_mean_
* tBodyGyroMag_std_

### Mean and sd body gyroscope magnitude
* tBodyGyroJerkMag_mean_
* tBodyGyroJerkMag_std_

## Frequency domain
* Accelaration units: g/Hz
* Jerk unitis: g
* Angular velocity (gyroscope) units: rad
* frecuency units: Hz

### Mean and sd triaxial body acceleration
* fBodyAcc_mean__X
* fBodyAcc_mean__Y
* fBodyAcc_mean__Z
* fBodyAcc_std__X
* fBodyAcc_std__Y
* fBodyAcc_std__Z

### Triaxial body mean frequency acceleration
* fBodyAcc_meanFreq__X
* fBodyAcc_meanFreq__Y
* fBodyAcc_meanFreq__Z

### Mean and sd triaxial body Jerk
* fBodyAccJerk_mean__X
* fBodyAccJerk_mean__Y
* fBodyAccJerk_mean__Z
* fBodyAccJerk_std__X
* fBodyAccJerk_std__Y
* fBodyAccJerk_std__Z

### Triaxial body mean frequency Jerk
* fBodyAccJerk_meanFreq__X
* fBodyAccJerk_meanFreq__Y
* fBodyAccJerk_meanFreq__Z

### Mean and sd triaxial body gyroscope
* fBodyGyro_mean__X
* fBodyGyro_mean__Y
* fBodyGyro_mean__Z
* fBodyGyro_std__X
* fBodyGyro_std__Y
* fBodyGyro_std__Z

### Triaxial body mean frequency gyroscope
* fBodyGyro_meanFreq__X
* fBodyGyro_meanFreq__Y
* fBodyGyro_meanFreq__Z

### Mean and sd body acceleration magnitude
* fBodyAccMag_mean_
* fBodyAccMag_std_

### Mean frecuency body acceleration magnitude
* fBodyAccMag_meanFreq_

### Mean and sd body Jerk magnitude
* fBodyBodyAccJerkMag_mean_
* fBodyBodyAccJerkMag_std_

### Mean frecuency body Jerk magnitude
* fBodyBodyAccJerkMag_meanFreq_

### Mean and sd body gyroscope magnitude
* fBodyBodyGyroMag_mean_
* fBodyBodyGyroMag_std_

### Mean frecuency body gyroscope magnitude
* fBodyBodyGyroMag_meanFreq_

### Mean and sd body gyroscope Jerk magnitude
* fBodyBodyGyroJerkMag_mean_
* fBodyBodyGyroJerkMag_std_

### Mean frecuency body gyroscope Jerk magnitude
* fBodyBodyGyroJerkMag_meanFreq_

References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
