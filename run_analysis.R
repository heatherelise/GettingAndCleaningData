run_analysis <- function(){
  
  
  ## load the data
  features <- read.table("./UCI HAR Dataset//features.txt",header=FALSE)
  xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
  ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt",header=FALSE)
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
  xtest <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
  ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt",header=FALSE)
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
  activity_labels <- read.table("./UCI HAR Dataset//activity_labels.txt", header=FALSE)

  ## merge the training and test sets to create one data set
  x <- rbind(xtrain,xtest)
  y <- rbind(ytrain,ytest)
  subject <- rbind(subject_train,subject_test)
  names(x) <- features[[2]]
  names(y) <- "activity"
  names(subject) <- "subject"
  data <- cbind(x,subject,y)
  remove(x,y,subject,xtrain,xtest,ytrain,ytest,subject_train,subject_test)
  
  ## extract only the measurements on the mean and standard deviation for each measurement
  df <- data[,c(grep("mean|std|subject|activity",tolower(colnames(data))))]
  
  ## remove the angle entries (gravityMean) and meanFreq because they are not mean measurements
  df <- df[,-grep("freq",tolower(colnames(df)))]
  df <- df[,-grep("angle",tolower(colnames(df)))]
  
  ## name the activities in the data set with descriptive activity names
  f <- factor(df$activity)
  levels(f) <- activity_labels$V2
  df$activity <- f
  
  ## label the data set with descriptive variable names
  varNames <- colnames(df)
  ## eliminate hyphens and parentheses
  varNames <- gsub("-","",varNames)
  varNames <- gsub("mean[()][)]","Mean",varNames)
  varNames <- gsub("std[()][)]","StandardDeviation",varNames)
  ## replace time and frequency at start of line
  varNames <- gsub("^t","time",varNames)
  varNames <- gsub("^f","frequency",varNames)
  ## replace accelerometer and gyroscope and magnitude
  varNames <- gsub("Acc","Accelerometer",varNames)
  varNames <- gsub("Gyro","Gyroscope",varNames)
  varNames <- gsub("Mag","Magnitude",varNames)
  ## eliminate BodyBody mistake
  varNames <- gsub("BodyBody","Body",varNames)
  ## reassign the names
  names(df) <- varNames
  
  ## average each variable for each activity and subject
  library(reshape2)
  dfMelt <- melt(df,id.vars=c("subject","activity"))
  df2 <- dcast(dfMelt,subject+activity~variable,mean)
  

}