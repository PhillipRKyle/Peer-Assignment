# Peer-Assignment


Please see README and features.txt files in the original dataset to learn more about the feature selection for this dataset. 

The purpose of the script is to perform the following instructions: 

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Relative to the original dataset, the following operations have been performed: 

#1. Variables in data sets for training- and test data were renamed using variableLabels ("features.txt"). Subject ("subject.txt") and activity ("activity_labels.xt") variables were assigned values "subject" and "activity"

#2. Mean and standard deviation variables were extracted using a columnIndex. The column index was derived using grepl to find variables ending in "-mean()" and "-std"

#3. Values for activity labels were replaced with strings naming the activities in the Dataset, using a match and replace function. 

#4. The full data set was summarized by group, using as grouping variables "subject" and "activity".

#5. The resulting data was exported as a .txt file in the file "tidyData.txt"

Please see codebook for description of variables. 



