
Feature Selection

The features selected for this database come from the time domain signals of the accelerometer and gyroscope 3-axial raw signals, filtered using a median filter and a 3rd order low pass Butterworth filter. The acceleration signal is separated into body and gravity acceleration signals.
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

- The prefix t is added to each variable to indicate that variables are time domain signals. 
- The postfix XYZ indicates 3-axial signals in the X, Y and Z directions.

Each variable represents mean and standard deviations, as indicated by the variable name. In short, for this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

The set of variables that were estimated (and kept for this assignment) from these signals are:

mean(): Mean value
std(): Standard deviation



