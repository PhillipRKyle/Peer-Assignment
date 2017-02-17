## Peer - rated assignment

library(dplyr)
library(tidyr)


#1.Load data
#Variable names 
variableLabels <- read.table("features.txt", stringsAsFactors = FALSE)[,2]
trainingData<- read.table("./train/X_train.txt")
trainingActivity<- read.table("./train/y_train.txt")
trainingSubject <- read.table("./train/subject_train.txt")
testData<- read.table("./test/X_test.txt")
testActivity<- read.table("./test/y_test.txt")
testSubject <- read.table("./test/subject_test.txt")
activityLabels <- read.table("activity_labels.txt")

#Convert to tbl_df for speed
trainingData<- tbl_df(trainingData)
testData <- tbl_df(testData)

#1. Assign variable names
colnames(trainingData) <- variableLabels
colnames(testData) <- variableLabels
colnames(testSubject) <- "subject"
colnames(trainingSubject) <- "subject"
colnames(testActivity) <- "activity"
colnames(trainingActivity) <- "activity"

#2. Prune data frames; append subject, activity variables; recode activity variable;
#merge data frames; 

colIndex <- grep("-mean\\()", variableLabels); grep("-std\\()", variableLabels)
training <- trainingData[,colIndex]
test <- testData[,colIndex]
training2 <- bind_cols(trainingSubject, trainingActivity, training)
test2 <- bind_cols(testSubject, testActivity, test)
full$activity <- activityLabels[,2][match(full$activity, activityLabels[,1])]
full <- bind_rows(training2, test2)

#3. Create a second, indepedent tidy data set with the average of each variable for each activity and each subject 

tidyData <- full %>%
        group_by(subject, activity)%>%
        summarize_each(funs(mean))

write.table(tidyData, "tidyData.txt", row.names = FALSE)
