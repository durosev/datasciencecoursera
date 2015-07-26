#Read input files, append subject and activity info to train and test measurement files. 
#Merge the resultant train and test measurement files.

features <- read.table("features.txt", stringsAsFactors=FALSE)
X_test <- read.table("X_test.txt")
X_train <- read.table("X_train.txt")
act_train <- read.table("y_train.txt")
act_test <- read.table("y_test.txt")
subj_train <- read.table("subject_train.txt")
subj_test <- read.table("subject_test.txt")

names(X_test) <- features$V2
names(X_train) <- features$V2

subj_act_test <- cbind(subj_test, act_test, X_test)
subj_act_train <- cbind(subj_train, act_train, X_train)
merged_data <- rbind(subj_act_test, subj_act_train)



#extract only columns that represent mean and sd of various measurement variables

data_subset <- merged_data[,c(1,2,3,4,5,6,7,8,43,44,45,46,47,48,83,84,85,86,87,88,123,124,125,126,127,128,163,164,165,166,167,168,203,204,216,217,229,230,242,243,255,256,268,269,270,271,272,273,347,348,349,350,351,352,426,427,428,429,430,431,505,506,518,519,531,532,544,545)]



#Label subject and activity columns in data_subset 

setnames(data_subset, "V1", "subject")
setnames(data_subset, "V1.1", "activity")



#Label activities appropriately in data_subset

data_subset$activity[data_subset$activity == "1"] <- "WALKING"
data_subset$activity[data_subset$activity == "2"] <- "WALKING_UPSTAIRS"
data_subset$activity[data_subset$activity == "3"] <- "WALKING_DOWNSTAIRS"
data_subset$activity[data_subset$activity == "4"] <- "SITTING"
data_subset$activity[data_subset$activity == "5"] <- "STANDING"
data_subset$activity[data_subset$activity == "6"] <- "LAYING"



#average each measurement variable in data_subset, per subject and per activity

library(dplyr)
grouped_data <- group_by(data_subset,subject,activity)
tidy_dataset <- summarise_each(grouped_data, funs(mean))
write.table(tidy_dataset, file="tidydataset.txt", sep=" ", row.names=FALSE, col.names=TRUE, quote=FALSE)



