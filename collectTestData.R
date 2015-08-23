# This function collect de test data and merge with subject and activity data.

collectTestData <- function(n=-1) {
    
	variablesFile <- "./data/UCI HAR Dataset/test/X_test.txt"
    testData <- read.table(variablesFile, header=FALSE, sep="", col.names=featuresLabels$feature_name ,na.strings="NA", nrows=n)

	subjectFile <- "./data/UCI HAR Dataset/test/subject_test.txt"
    test.subject <- read.csv2(subjectFile, header=FALSE, sep="", col.names=c("subject_id"), na.strings="NA", nrows=n)

	activitiesFile <- "./data/UCI HAR Dataset/test/y_test.txt"
    test.activity <- read.csv2(activitiesFile, header=FALSE, sep="", col.names=c("activity_id"), na.strings="NA", nrows=n)
    test.activity <- merge(test.activity, actLabels)

    testData <- dplyr::select(testData, contains("mean"), contains("std"))

    testData <- cbind(test.subject, testData)

    testData <- cbind(test.activity, testData)

    testData
}
