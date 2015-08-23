# This analysis is relative a Course Project of course "Getting and Cleaning Data, part of Data Science Specialization.

source("mergeTrainingAndTestData.R")
source("generateMeanAndSdForMergedData.R")
source("generateStatsDataset.R")

main.run <- function() {

    mergeTrainingAndTestData()

    generateMeanAndSdForMergedData()

    generateStatsDataset()
    
} 

