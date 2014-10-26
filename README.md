---
title: "ReadMe"
output: html_document
---

The script to run is run_analysis.R.  This script should be in the same folder as the "UCI HAR Dataset" folder.  The script will automatically extract the files in the existing folder structure.

The script first loads all of the data (features, xtrain, ytrain, xtest, ytest, subject_test, activity_labels).  Then it creates one data set by merging the training and testing data into one data frame.  It also adds the subjects to the data frame and names the features.  

Next the script extracts only the mean and standard deviation for each of the measurements.  It removes the angle and meanFreq entries, as well, since they are not mean measurements.

Then the script gives the activities descriptive names using the provided activity labels.  This is accomplished by encoding the activities as factors and then setting the levels to the activity labels.

Next it labels the data set with descriptive variable names.  This is done by editing the existing names to eliminate illegal symbols and to expand abbreviations.  These names are descriptive because they are now readable.  I used camel case since the names are so long, it helps with readability.  I also corrected the mistake of "BodyBody."

Finally, the script creates a tidy data set by taking the mean of each variable for each activity and subject.  This is accomplished by melting the data frame by subject and activity.  Then dcast is used to take the mean of each variable.  This tidy data set is returned by the script. 

