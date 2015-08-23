# This function collect de train data and merge with subject and activity data.

collectTrainData <- function(n=-1) {

	featuresFile <- "./data/UCI HAR Dataset/train/X_train.txt"
    trainData <- read.table(featuresFile, header=FALSE, sep="", col.names=featuresLabels$feature_name ,na.strings="NA", nrows=n)

	subjectsFile <- "./data/UCI HAR Dataset/train/subject_train.txt"
    train.subject <- read.csv2(subjectsFile, header=FALSE, sep="", col.names=c("subject_id"), na.strings="NA", nrows=n)

	activitiesFile <- "./data/UCI HAR Dataset/train/y_train.txt"
    train.activity <- read.csv2(activitiesFile, header=FALSE, sep="", col.names=c("activity_id"), na.strings="NA", nrows=n)
    train.activity <- merge(train.activity, actLabels)
        
    trainData <- dplyr::select(trainData, contains("mean"), contains("std"))
    
    trainData <- cbind(train.subject, trainData)

    trainData <- cbind(train.activity, trainData)
    
    trainData
}
