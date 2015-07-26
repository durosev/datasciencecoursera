Getting and cleaning the data assignemnt performed on human activity data obtained using smarstphone embeded accelerometer and gyroscope 

30 volunteer subjects were involved in the study and it was performed for 6 human activities:

walking  (denoted as 1 in y_test.txt and y_train.txt)
walking upstairs  (denoted as 2 in  y_test.txt and y_train.txt)
walking downstairs  (denoted as 3 in y_test.txt and y_train.txt)
sitting  (denoted as 4 in y_test.txt and y_train.txt)
standing  (denoted as 5 in y_test.txt and y_train.txt)
laying  (denoted as 6 in y_test.txt and y_train.txt)

1. Files given|Desription

features.txt| list of features(variables) that were measured and processed 

subject_test.txt| list of subjects/volunteers(in numbers) for which data in X_test.txt was obtained and which matches that data row by row  

subject_train.txt| list of subjects/volunteers (in numbers) for which data in  X_train.txt was obtained and which matches that data row by row

X_test.txt| table of repeat feature measurements (total of 561 features) per subject and per activity (this is data on 30% of subject volunteers)

X_train.txt|table of repeat feature measurements (total of 561 features) per subject and per activity (this is data on 70% of subject vo\
lunteers)

y_test.txt|list of human activities for which data in X_test.txt was obtained and which matches that data row by row


y_train.txt| list of human activities for which data in X_train.txt was obtained and which matches that data row by row



2. Steps performed to obtain tidy data (tidydataset.txt) required:

 
 1. Features/variables contained in features.txt were assigned as column headers to training dataset (from  X_train.txt) and test dataset (from X_test.txt). human activity and subject info from relevant files described above was appended as columns to each of the two resultant dataframes in the first step, to obtain subj_act_test and subj_act_train dataframes which were subsequently merged into one dataset: merged_data.
 2. 66 features/variables that correspond to mean and sd measurments were identified and extracted from merged_data to obtain data_subset
 3. Subject and human activity columns in data_subset were assigned descriptive names: 'subject' and 'activity'.
 4. human activity items in 'activity' column of data_subset were assigned descriptive names according to the code provided at the beggining of this CodeBook file.
 5. Final summary of this data_subset was achieved by grouping the data on subject and activity and calculating the mean of each feature/variable per geenrated groups.   



3. Final tidydataset.txt variable description

Column variable	        |Desription
                        |
Subject		        |volunteer number (volunteers are between the age of 19-48 (total of 30 volunteers)
Activity	        |body activity type (which refers to one of the  6 activities: walking, walking upstairs,
                        | walking downstairs, sitting, standing and laying
tBodyAcc-mean()-X       |mean of body acceleration signal along X
tBodyAcc-mean()-Y       |mean of body acceleration signal along Y
tBodyAcc-mean()-Z       |mean of body acceleration signal along Z
tBodyAcc-sd()-X	        |standard deviation of body acceleration signal along X
tBodyAcc-sd()-Y	        |standard deviation of body acceleration signal along Y
tBodyAcc-sd()-Z	        |standard deviation of body acceleration signal along Z
tGravityAcc-mean()-X    |mean of gravity acceleration signal along X
tGravityAcc-mean()-Y    |mean of gravity acceleration signal along Y
tGravityAcc-mean()-Z    |mean of gravity acceleration signal along Z
tGravityAcc-sd()-X      |standard deviation of gravity acceleration signal along  X
tGravityAcc-sd()-Y      |standard deviation of gravity acceleration signal along  Y
tGravityAcc-sd()-Z      |standard deviation of gravity acceleration signal along  Z
tBodyAccJerk-mean()-X   |mean of body linear acceleration Jerk signal along X
tBodyAccJerk-mean()-Y   |mean of body linear acceleration Jerk signal along Y
tBodyAccJerk-mean()-Z   |mean of body linear acceleration Jerk signal along Z
tBodyAccJerk-sd()-X     |standard deviation of body linear acceleration Jerk signal along X
tBodyAccJerk-sd()-Y     |standard deviation of body linear acceleration Jerk signal along Y
tBodyAccJerk-sd()-Z     |standard deviation of body linear acceleration Jerk sugnal along Z
tBodyGyro-mean()-X      |mean of angular velocity signal along X
tBodyGyro-mean()-Y      |mean of angular velocity signal along Y
tBodyGyro-mean()-Z      |mean of angular velocity signal along Z
tBodyGyro-sd()-X        |standard deviation of angular velocity signal along X
tBodyGyro-sd()-Y        |standard deviation of angular velocity signal along Y
tBodyGyro-sd()-Z        |standard deviation of angular velocity signal along Z
tBodyGyroJerk-mean()-X  |mean of angular velocity Jerk signal along X
tBodyGyroJerk-mean()-Y  |mean of angular velocity Jerk signal along Y
tBodyGyroJerk-mean()-Z  |mean of angular velocity Jerk signal along Z
tBodyGyroJerk-sd()-X    |standard deviation of angular velocity Jerk signal along X
tBodyGyroJerk-sd()-Y    |standard deviation of angular velocity Jerk signal along Y
tBodyGyroJerk-sd()-Z    |standard deviation of angular velocity Jerk signal along Z
tBodyAccMag-mean()      |mean of magnitude of body acceleration 3D  signal
tBodyAccMag-sd()        |standard deviation of maginitude of body acceleration 3D signal
tGravityAccMag-mean()   |mean of magnitude of gravity acceleration 3D signal
tGravityAccMag-sd()     |standard deviation of magnitude of gravity acceleration 3D signal
tBodyAccJerkMag-mean()  |mean of magnitude of body linear acceleration 3D Jerk signal
tBodyAccJerkMag-sd()    |standard deviation of magnitude of body linear accelreation 3D Jerk signal
tBodyGyroMag-mean()     |mean of magnitude of angular velocity 3D  signal
tBodyGyroMag-sd()       |standard deviation of magnitude of angular velocity of 3D signal
tBodyGyroJerkMag-mean() |mean of magnitude of angular velocity 3D Jerk signal
tBodyGyroJerkMag-sd()   |standard deviation of magnitude of angular velocity of	 3D Jerk signal
fBodyAcc-mean()-X       |mean of Fast Fourier Transform(FFT) of body acceleration signal along X 
fBodyAcc-mean()-Y       |mean of FFT	of body	acceleration signal along Y
fBodyAcc-mean()-Z       |mean of FFT	of body	acceleration signal along Z
fBodyAcc-sd()-X         |standard deviation of FFT of body	acceleration signal along X
fBodyAcc-sd()-Y         |standard deviation of FFT of body	acceleration signal along Y
fBodyAcc-sd()-Z         |standard deviation of FFT of body	acceleration signal along Z
fBodyAccJerk-mean()-X   |mean of FFT	 of body linear acceleration Jerk signal along X
fBodyAccJerk-mean()-Y   |mean of FFT  of body linear acceleration Jerk signal along Y
fBodyAccJerk-mean()-Z   |mean of FFT  of body linear acceleration Jerk signal along Z
fBodyAccJerk-sd()-X     |standard deviation of FFT  of body linear acceleration Jerk signal along X
fBodyAccJerk-sd()-Y     |standard deviation of FFT  of body linear acceleration Jerk signal along Y
fBodyAccJerk-sd()-Z     |standard deviation of FFT  of body linear acceleration Jerk signal along Z
fBodyGyro-mean()-X      |mean of FFT  of angular velocity signal along X
fBodyGyro-mean()-Y      |mean of FFT  of angular velocity signal along Y
fBodyGyro-mean()-Z      |mean of FFT  of angular velocity signal along Z
fBodyGyro-sd()-X        |standard deviation of FFT  of angular velocity signal along X
fBodyGyro-sd()-Y        |standard deviation of FFT  of angular velocity signal along Y
fBodyGyro-sd()-Z        |standard deviation of FFT  of angular velocity signal along Z
fBodyAccMag-mean()      |mean of FFT  of magnitude of body acceleration 3D signal
fBodyAccMag-sd()        |standard deviation of FFT  of magnitude of body acceleration 3D signal 
fBodyAccJerkMag-mean()  |mean of FFT  of magnitude of body linear acceleration 3D Jerk signal
fBodyAccJerkMag-sd()    |standard deviation of FFT  of magnitude of body linear acceleration 3D Jerk signal
fBodyGyroMag-mean()     |mean of FFT of magnitude of angular velocity 3D  signal
fBodyGyroMag-sd()       |standard deviation of FFT of magnitude of angular velocity 3D  signal
fBodyGyroJerkMag-mean() |mean of FFT of magnitude of angular velocity 3D Jerk signal
fBodyGyroJerkMag-sd()   |standard deviation of FFT of magnitude of angular velocity 3D Jerk signal

