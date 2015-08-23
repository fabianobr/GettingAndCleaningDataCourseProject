# This function performs the analysis on the Course Project "Getting and Cleaning Data", part of Specialization in Data Science.
# First step is to merge Training and Test Data.
# Secont step is to generate the stats.

source("mergeTrainingAndTestData.R")
source("generateStatsDataset.R")

main.run <- function() {

    readyData <- mergeTrainingAndTestData()

    generateStatsDataset(readyData)
    
} 

