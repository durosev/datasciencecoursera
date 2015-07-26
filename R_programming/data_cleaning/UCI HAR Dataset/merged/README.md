description of script run_analysis.R:

Sections of code I am refering to below can be identified by comments in the script

1. In the first section, all relevant input files are read (see description of these in CodeBook.md).Script assumes presence of input files in the working directory. Features/variables from features object were assigned as column headers to each X_train object and X_test object that contain relevant measurement data. 

 Matching human activity and subject data (description of these are provided in CodeBook.md) from subj_test and act_test;subj_train and act_train were appended as columns to the corresponding resultant dataframes in the step above, to obtain subj_act_test and subj_act_train dataframes  which were subsequently merged into one dataset: merged_data.

2. 66 features/variables that correspond to mean and sd measurments were extracted from merged_data to obtain data_subset object.

3. Subject and human activity columns in data_subset were assigned descriptive names: 'subject' and 'activity'.
 
4. human activity items in 'activity' column of data_subset were assigned descriptive names according to the code provi\
ded in the CodeBook.md.

5. Final summary of this data_subset was achieved by grouping the data on subject and activity(with group_by) and calculating the mean of each feature/variable per generated groups (with summarise_each). dplyr library is required for this section 5.






