#get the names variables from  features.txt
feature_df <- read.table("features.txt", sep = " ", header = FALSE, stringsAsFactors = FALSE)
VarNames <- as.vector(feature_df$V2)
rm(feature_df)

#load the train data from train directory
trainActivity <- readLines("y_train.txt")
trainSubject <-readLines("subject_train.txt")
trainDF <- read.table("X_train.txt", sep = "", header = FALSE, col.names = VarNames)

#add the AcivityCode column to the train data frame
trainDF$Activity <- trainActivity

#add the Subject column to the train data frame
trainDF$SubjectCode <- trainSubject

#load the test data from test directory
testActivity <- readLines("y_test.txt")
testSubject <-readLines("subject_test.txt")
testDF <- read.table("X_test.txt", sep = "", header = FALSE, col.names = VarNames)

#add the AcivityCode column to the test data frame
testDF$Activity <- testActivity

#add the Subject column to the test data frame
testDF$SubjectCode <- testSubject

#add the 2 data frames
allDF <- rbind(testDF,trainDF)

#Clean the memory
rm(testDF,trainDF, testActivity, testSubject, trainSubject,trainActivity)

#load dplyr packages
library(dplyr)
croppedDF <- allDF[,grepl("mean|std|meanFreq|Activity|SubjectCode", colnames(allDF))]

#clear memory
rm(allDF)

#transform ActivityCode Variable from character to factor in croppedDF
croppedDF$Activity <- factor(croppedDF$ActivityCode)

library(plyr)

croppedDF$Activity <-revalue(croppedDF$Activity, c("1" = "WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS", "4"="SITTING", "5"= "STANDING",
                               "6"= "LAYING"))
#Appropriately labels the data set with descriptive variable names
colnames(croppedDF) <- gsub("\\.{1,}", "_",colnames(croppedDF))
colnames(croppedDF) <- gsub("\\_$", "",colnames(croppedDF))

#reshape data set with reshape2 package
library(reshape2)
meltedDF <- melt(croppedDF, id = c("SubjectCode", "Activity"))

#remove the croppedDF
rm(croppedDF)
finalDF <- dcast(meltedDF, SubjectCode + Activity ~ variable, mean)

#remove the meltedDF
rm(meltedDF)

#Save the datase to a file
write.table(finalDF, file = "MyTidyData.txt", row.names = FALSE)



