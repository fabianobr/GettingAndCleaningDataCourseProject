# This function receives a desired data ready to summarize.
# First the data is melted by "subject" and "activity".
# Then the data are correctly aggregate by variable, with "subject" and "activity" as primary keys.

generateStatsDataset <- function(readyData) {

    measurevars <- names(readyData)[4:89]
    primaryKeys <- c("subject_id", "activity_name")
    
    meltData <- melt(readyData, id=primaryKeys, measure.vars=measurevars)
    
    statsData <- dcast(meltData, subject_id + activity_name ~ variable, mean)
    
    write.table(statsData,"courseProjectStats.txt", row.name=FALSE)
    
    statsData
    
}