source("collectTestData.R")

mergeTrainingAndTestData <- function() {
    
    statsData <- collectTestData()
    
    write.table(a,"courseProjectStats.txt", row.name=FALSE)
    
    print("mergeTrainingAndTestData OK")
}