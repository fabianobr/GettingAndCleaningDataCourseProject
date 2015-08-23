# this function collect and merge the test and train data files

library(dplyr)
library(reshape2)

# read the common feature list
featuresFile <- "./data/UCI HAR Dataset/features.txt"
featuresLabels <- read.csv2(featuresFile, header=FALSE, sep="", col.names=c("feature_id","feature_name"), na.strings="NA")
featuresLabels$feature_name <- gsub("[^[:alnum:][:blank:]+?&/\\-]", "", featuresLabels$feature_name)

# read the common activitiesList
activitiesFile <- "./data/UCI HAR Dataset/activity_labels.txt"
actLabels <- read.csv2(activitiesFile, header=FALSE, sep="", col.names=c("activity_id","activity_name"), na.strings="NA")

source("collectTestData.R")
source("collectTrainData.R")

mergeTrainingAndTestData <- function() {
    
    testData <- collectTestData()
    
    trainData <- collectTrainData()
    
    mergedData <- rbind(testData, trainData)
    
    mergedData
}