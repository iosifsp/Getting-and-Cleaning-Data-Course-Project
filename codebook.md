#Stydy design

##Raw Data Info

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

link to the dataset webpage(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

link to download the dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

###Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Feature Info

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

###Raw data files that are used to produced the final tidy data set
* "features.txt" :List of all features
* "y_train.txt" : Training labels
* "subject_train.txt": Each row identifies the subject who performed the activity for each window sample.  
* "X_train.txt" : Training set
* "y_test.txt" : Training labels
* "subject_test.txt : Each row identifies the subject who performed the activity for each window sample.  
* "X_test.txt": Test set

# Codebook 

* "SubjectCode": identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

* "Activity": A factor variable with 6 levels corrisponding in 6 different subject activities 
 1. WALKING
 2. WALKING_UPSTAIRS
 3. WALKING_DOWNSTAIRS
 4. SITTING
 5. STANDING
 6. LAYING

All the below variables are are normalized and bounded within [-1,1], thus they don't have units.

All the below variables are average values for each activity and each subject of the raw data set variable values that represent the mean, standard deviation and mean Frequency.

* "tBodyAcc_mean_X"
* "tBodyAcc_mean_Y"
* "tBodyAcc_mean_Z"

* "tBodyAcc_std_X"
* "tBodyAcc_std_Y"
* "tBodyAcc_std_Z"

* "tGravityAcc_mean_X"
* "tGravityAcc_mean_Y"
* "tGravityAcc_mean_Z"

* "tGravityAcc_std_X"
* "tGravityAcc_std_Y"
* "tGravityAcc_std_Z"

* "tBodyAccJerk_mean_X"
* "tBodyAccJerk_mean_Y"
* "tBodyAccJerk_mean_Z"

* "tBodyAccJerk_std_X"
* "tBodyAccJerk_std_Y"
* "tBodyAccJerk_std_Z"

* "tBodyGyro_mean_X"
* "tBodyGyro_mean_Y"
* "tBodyGyro_mean_Z"

* "tBodyGyro_std_X"
* "tBodyGyro_std_Y"
* "tBodyGyro_std_Z"

* "tBodyGyroJerk_mean_X"
* "tBodyGyroJerk_mean_Y"
* "tBodyGyroJerk_mean_Z"

* "tBodyGyroJerk_std_X"
* "tBodyGyroJerk_std_Y"
* "tBodyGyroJerk_std_Z"

* "tBodyAccMag_mean"
* "tBodyAccMag_std"

* "tGravityAccMag_mean"
* "tGravityAccMag_std"

* "tBodyAccJerkMag_mean"
* "tBodyAccJerkMag_std"

* "tBodyGyroMag_mean"
* "tBodyGyroMag_std"

* "tBodyGyroJerkMag_mean"
* "tBodyGyroJerkMag_std"

* "fBodyAcc_mean_X"
* "fBodyAcc_mean_Y"
* "fBodyAcc_mean_Z"

* "fBodyAcc_std_X"
* "fBodyAcc_std_Y"
* "fBodyAcc_std_Z"

* "fBodyAcc_meanFreq_X"
* "fBodyAcc_meanFreq_Y"
* "fBodyAcc_meanFreq_Z"

* "fBodyAccJerk_mean_X"
* "fBodyAccJerk_mean_Y"
* "fBodyAccJerk_mean_Z"

* "fBodyAccJerk_std_X"
* "fBodyAccJerk_std_Y"
* "fBodyAccJerk_std_Z"

* "fBodyAccJerk_meanFreq_X"
* "fBodyAccJerk_meanFreq_Y"
* "fBodyAccJerk_meanFreq_Z"

* "fBodyGyro_mean_X"
* "fBodyGyro_mean_Y"
* "fBodyGyro_mean_Z"

* "fBodyGyro_std_X"
* "fBodyGyro_std_Y"
* "fBodyGyro_std_Z"

* "fBodyGyro_meanFreq_X"
* "fBodyGyro_meanFreq_Y"
* "fBodyGyro_meanFreq_Z"

* "fBodyAccMag_mean"
* "fBodyAccMag_std"

* "fBodyAccMag_meanFreq"

* "fBodyBodyAccJerkMag_mean"

* "fBodyBodyAccJerkMag_std"

* "fBodyBodyAccJerkMag_meanFreq"

* "fBodyBodyGyroMag_mean"

* "fBodyBodyGyroMag_std"

* "fBodyBodyGyroMag_meanFreq"

* "fBodyBodyGyroJerkMag_mean"

* "fBodyBodyGyroJerkMag_std"

* "fBodyBodyGyroJerkMag_meanFreq"

# Instruction list

Step1 -> Get the names of all raw dataset variables\n
Step2 -> Read the trainActivity and create a vector from the y_train.txt file 
Step3 -> Read the trainsubjects from and create a vector from the subject_train.txt file
Step4 -> read the Train Data Frame from X_train.txt file
Step5 -> Add to the Train Data Frame the Column Activity and add the values of the trainActivity Vector
Step6 -> Add to the Train Data Frame the Column SubjectCode and add the values of the trainsubject vector
Step7 -> Read the testsubjects from and create a vector from the subject_test.txt file
Step8 -> read the Test Data Frame from X_test.txt file
Step9 -> Add to the Test Data Frame the Column Activity and add the values of the testActivity Vector
Step10 -> Add to the Test Data Frame the Column SubjectCode and add the values of the testsubject vector
Step11 -> Add Train and Test Data Set to one DataSet
Step12 -> create a newDataset with only the variables of mean and stantard deviation and mean Freqency 
Step13 -> Transform Activity variable from character to factor
Step14 -> relevel the Activity variable with the levels WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
Step15 -> Substitute the "." with "_" in the names variable of the new dataset
Step16 -> Melt the last dataset with id variables SubjectCode and Activity
Step17 -> recast the molten dataset with id variables SubjectCode and Activity calculating the avarage values creating the final dataset
Step18 -> save the final data set to MyTidyData.txt
