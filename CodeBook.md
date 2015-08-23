# Code book

After running the script "run_analysis.R" an output file will be generated named "courseProjectStats.txt".

The generated file is a text file composed of 87 columns - contain 2 main columns and 85 columns representing other variables.

Main columns:
- "Subject_id": Each ID represents an observed person 1 - 30. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
- "activity_name": Activities can be WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING;

Each row is an observation by activity and subject, followed by the average of the collected variables. The 85 variables are:
- "tBodyAcc.mean.X" 
- "tBodyAcc.mean.Y" 
- "tBodyAcc.mean.Z" 
- "tGravityAcc.mean.X" 
- "tGravityAcc.mean.Y" 
- "tGravityAcc.mean.Z" 
- "tBodyAccJerk.mean.X" 
- "tBodyAccJerk.mean.Y" 
- "tBodyAccJerk.mean.Z" 
- "tBodyGyro.mean.X" 
- "tBodyGyro.mean.Y" 
- "tBodyGyro.mean.Z" 
- "tBodyGyroJerk.mean.X" 
- "tBodyGyroJerk.mean.Y" 
- "tBodyGyroJerk.mean.Z" 
- "tBodyAccMag.mean" 
- "tGravityAccMag.mean" 
- "tBodyAccJerkMag.mean" 
- "tBodyGyroMag.mean" 
- "tBodyGyroJerkMag.mean" 
- "fBodyAcc.mean.X" 
- "fBodyAcc.mean.Y" 
- "fBodyAcc.mean.Z" 
- "fBodyAcc.meanFreq.X" 
- "fBodyAcc.meanFreq.Y" 
- "fBodyAcc.meanFreq.Z" 
- "fBodyAccJerk.mean.X" 
- "fBodyAccJerk.mean.Y" 
- "fBodyAccJerk.mean.Z" 
- "fBodyAccJerk.meanFreq.X" 
- "fBodyAccJerk.meanFreq.Y" 
- "fBodyAccJerk.meanFreq.Z" 
- "fBodyGyro.mean.X" 
- "fBodyGyro.mean.Y" 
- "fBodyGyro.mean.Z" 
- "fBodyGyro.meanFreq.X" 
- "fBodyGyro.meanFreq.Y" 
- "fBodyGyro.meanFreq.Z"
- "fBodyAccMag.mean"
- "fBodyAccMag.meanFreq"
- "fBodyBodyAccJerkMag.mean" 
- "fBodyBodyAccJerkMag.meanFreq"
- "fBodyBodyGyroMag.mean"
- "fBodyBodyGyroMag.meanFreq"
- "fBodyBodyGyroJerkMag.mean"
- "fBodyBodyGyroJerkMag.meanFreq"
- "angletBodyAccMeangravity"
- "angletBodyAccJerkMeangravityMean"
- "angletBodyGyroMeangravityMean"
- "angletBodyGyroJerkMeangravityMean"
- "angleXgravityMean" 
- "angleYgravityMean"
- "angleZgravityMean"
- "tBodyAcc.std.X"
- "tBodyAcc.std.Y"
- "tBodyAcc.std.Z"
- "tGravityAcc.std.X"
- "tGravityAcc.std.Y"
- "tGravityAcc.std.Z"
- "tBodyAccJerk.std.X"
- "tBodyAccJerk.std.Y"
- "tBodyAccJerk.std.Z"
- "tBodyGyro.std.X"
- "tBodyGyro.std.Y"
- "tBodyGyro.std.Z"
- "tBodyGyroJerk.std.X" 
- "tBodyGyroJerk.std.Y"
- "tBodyGyroJerk.std.Z"
- "tBodyAccMag.std"
- "tGravityAccMag.std"
- "tBodyAccJerkMag.std"
- "tBodyGyroMag.std"
- "tBodyGyroJerkMag.std"
- "fBodyAcc.std.X"
- "fBodyAcc.std.Y"
- "fBodyAcc.std.Z"
- "fBodyAccJerk.std.X"
- "fBodyAccJerk.std.Y"
- "fBodyAccJerk.std.Z"
- "fBodyGyro.std.X" 
- "fBodyGyro.std.Y"
- "fBodyGyro.std.Z" 
- "fBodyAccMag.std"
- "fBodyBodyAccJerkMag.std"
- "fBodyBodyGyroMag.std"
- "fBodyBodyGyroJerkMag.std"

The variables above are abbreviated features.
The first character represents the unit can be 't' for time or 'f' for frequency.
The last character represent the pre calculated value can be "std" for standatd deviation or "mean".

## Addition Feature information 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean
