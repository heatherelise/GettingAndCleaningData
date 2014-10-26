---
title: "CodeBook"
output: html_document
---
## Raw Data:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

The data was normalized to be from -1 to 1, so there are no units for the data set.

## Transformed Data:

Only the variables representing the mean and standard deviation measurements were selected.  All of the other variables were discarded.  The names of the variables were expanded to be more readale and to remove illegal characters.  Also, the activity numbers were replaced by the activity names.  The remaining variables were:
 [1] "subject"                                                 
 [2] "activity"                                                
 [3] "timeBodyAccelerometerMeanX"                              
 [4] "timeBodyAccelerometerMeanY"                              
 [5] "timeBodyAccelerometerMeanZ"                              
 [6] "timeBodyAccelerometerStandardDeviationX"                 
 [7] "timeBodyAccelerometerStandardDeviationY"                 
 [8] "timeBodyAccelerometerStandardDeviationZ"                 
 [9] "timeGravityAccelerometerMeanX"                           
[10] "timeGravityAccelerometerMeanY"                           
[11] "timeGravityAccelerometerMeanZ"                           
[12] "timeGravityAccelerometerStandardDeviationX"              
[13] "timeGravityAccelerometerStandardDeviationY"              
[14] "timeGravityAccelerometerStandardDeviationZ"              
[15] "timeBodyAccelerometerJerkMeanX"                          
[16] "timeBodyAccelerometerJerkMeanY"                          
[17] "timeBodyAccelerometerJerkMeanZ"                          
[18] "timeBodyAccelerometerJerkStandardDeviationX"             
[19] "timeBodyAccelerometerJerkStandardDeviationY"             
[20] "timeBodyAccelerometerJerkStandardDeviationZ"             
[21] "timeBodyGyroscopeMeanX"                                  
[22] "timeBodyGyroscopeMeanY"                                  
[23] "timeBodyGyroscopeMeanZ"                                  
[24] "timeBodyGyroscopeStandardDeviationX"                     
[25] "timeBodyGyroscopeStandardDeviationY"                     
[26] "timeBodyGyroscopeStandardDeviationZ"                     
[27] "timeBodyGyroscopeJerkMeanX"                              
[28] "timeBodyGyroscopeJerkMeanY"                              
[29] "timeBodyGyroscopeJerkMeanZ"                              
[30] "timeBodyGyroscopeJerkStandardDeviationX"                 
[31] "timeBodyGyroscopeJerkStandardDeviationY"                 
[32] "timeBodyGyroscopeJerkStandardDeviationZ"                 
[33] "timeBodyAccelerometerMagnitudeMean"                      
[34] "timeBodyAccelerometerMagnitudeStandardDeviation"         
[35] "timeGravityAccelerometerMagnitudeMean"                   
[36] "timeGravityAccelerometerMagnitudeStandardDeviation"      
[37] "timeBodyAccelerometerJerkMagnitudeMean"                  
[38] "timeBodyAccelerometerJerkMagnitudeStandardDeviation"     
[39] "timeBodyGyroscopeMagnitudeMean"                          
[40] "timeBodyGyroscopeMagnitudeStandardDeviation"             
[41] "timeBodyGyroscopeJerkMagnitudeMean"                      
[42] "timeBodyGyroscopeJerkMagnitudeStandardDeviation"         
[43] "frequencyBodyAccelerometerMeanX"                         
[44] "frequencyBodyAccelerometerMeanY"                         
[45] "frequencyBodyAccelerometerMeanZ"                         
[46] "frequencyBodyAccelerometerStandardDeviationX"            
[47] "frequencyBodyAccelerometerStandardDeviationY"            
[48] "frequencyBodyAccelerometerStandardDeviationZ"            
[49] "frequencyBodyAccelerometerJerkMeanX"                     
[50] "frequencyBodyAccelerometerJerkMeanY"                     
[51] "frequencyBodyAccelerometerJerkMeanZ"                     
[52] "frequencyBodyAccelerometerJerkStandardDeviationX"        
[53] "frequencyBodyAccelerometerJerkStandardDeviationY"        
[54] "frequencyBodyAccelerometerJerkStandardDeviationZ"        
[55] "frequencyBodyGyroscopeMeanX"                             
[56] "frequencyBodyGyroscopeMeanY"                             
[57] "frequencyBodyGyroscopeMeanZ"                             
[58] "frequencyBodyGyroscopeStandardDeviationX"                
[59] "frequencyBodyGyroscopeStandardDeviationY"                
[60] "frequencyBodyGyroscopeStandardDeviationZ"                
[61] "frequencyBodyAccelerometerMagnitudeMean"                 
[62] "frequencyBodyAccelerometerMagnitudeStandardDeviation"    
[63] "frequencyBodyAccelerometerJerkMagnitudeMean"             
[64] "frequencyBodyAccelerometerJerkMagnitudeStandardDeviation"
[65] "frequencyBodyGyroscopeMagnitudeMean"                     
[66] "frequencyBodyGyroscopeMagnitudeStandardDeviation"        
[67] "frequencyBodyGyroscopeJerkMagnitudeMean"                 
[68] "frequencyBodyGyroscopeJerkMagnitudeStandardDeviation"    

The variables were then separated by activity for each subject, and the mean was taken of each variable.  So for each subject, for each activity, the mean of each variable is reported in the resulting data frame.
