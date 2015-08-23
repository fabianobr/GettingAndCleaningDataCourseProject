

collectTestData <- function(n=200) {

    featuresLabels <- read.csv2("./data/UCI HAR Dataset/features.txt", header=FALSE, sep="", col.names=c("feature_id","feature_name"), na.strings="NA")
    testData <- read.csv2("./data/UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="", col.names=featuresLabels$feature_name ,na.strings="NA", nrows=n)
    
    test.subject <- read.csv2("./data/UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="", col.names=c("subject_id"), na.strings="NA", nrows=n)

    actLabels <- read.csv2("./data/UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="", col.names=c("activity_id","activity_name"), na.strings="NA")
    test.activity <- read.csv2("./data/UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="", col.names=c("activity_id"), na.strings="NA", nrows=n)
    test.activity <- merge(test.activity, actLabels)
        
    testData <- cbind(test.subject, testData)

    testData <- cbind(test.activity, testData)
    
    testData
}
