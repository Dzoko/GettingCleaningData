run_analysis <- function (){
        
        
        ## Load Data Files - 8 Files
        
        xtest <- read.table("UCI HAR Dataset/test/x_test.txt") ## observations
        ytest <- read.table("UCI HAR Dataset/test/y_test.txt") ## activity number
        subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt") ## subjects
        
        
        xtrain <- read.table("UCI HAR Dataset/train/x_train.txt") ## observations
        ytrain <- read.table("UCI HAR Dataset/train/y_train.txt") ## activity number
        subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt") ## subjects
        
        features <- read.table("UCI HAR Dataset/features.txt")
        activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
        
        ## Assign Column Names
        
        colnames(xtest) <- features$V2
        colnames(xtrain) <- features$V2
        
        colnames(subjecttest) <- "subject"
        colnames(subjecttrain) <- "subject"
        
        colnames(ytest) <- "activity"
        colnames(ytrain) <- "activity"
        
        ## Subset Data
        ## Get bolean vectors for 'mean'
        
        xtestMeanCol <- grepl("x*mean", ignore.case = TRUE,colnames(xtest))
        xtrainMeanCol <- grepl("x*mean", ignore.case = TRUE,colnames(xtrain))
        
        ## Get bolean vectors for 'std'
        
        xtestStdCol <- grepl("x*std", ignore.case = TRUE,colnames(xtest))
        xtrainStdCol <- grepl("x*std", ignore.case = TRUE,colnames(xtrain))
        
        ## Subset 'mean'
        
        xtestMean <- xtest[,xtestMeanCol]
        xtrainMean <- xtrain[,xtrainMeanCol]
        
        ## Subset 'std'
        
        xtestStd <- xtest[,xtestStdCol]
        xtrainStd <- xtrain[,xtrainStdCol]
        
        ## Merge data
        testDF <- cbind(subjecttest, ytest, xtestMean, xtestStd)
        trainDF <- cbind(subjecttrain, ytrain, xtrainMean, xtrainStd)
        
        CombinedDF <- rbind(testDF,trainDF)
        
        ## Replace activity names
        activitylabels$V2 <- as.character(activitylabels$V2)
        CombinedDF$activity <- as.character(CombinedDF$activity)
        
        CombinedDF[CombinedDF$activity == 1,2] <- activitylabels$V2[1]
        CombinedDF[CombinedDF$activity == 2,2] <- activitylabels$V2[2]
        CombinedDF[CombinedDF$activity == 3,2] <- activitylabels$V2[3]
        CombinedDF[CombinedDF$activity == 4,2] <- activitylabels$V2[4]
        CombinedDF[CombinedDF$activity == 5,2] <- activitylabels$V2[5]
        CombinedDF[CombinedDF$activity == 6,2] <- activitylabels$V2[6]
        
        ## create empty DataFrame
        
        AverageDf <- data.frame(matrix(0, ncol = 4, nrow = 0)) 
        AddDf <- data.frame(matrix(0, ncol = 4, nrow = 1)) 
        
        for (i in 1:30){ ## Loop for subjects
                
                for (j in 1:6){ ## Loop for activities
                        
                        forDF1 <- filter(CombinedDF, subject == i, activity == activitylabels$V2[j])
                        
                        for (k in 1:86){ ## Loop for measures
                                kf = k + 2
                                
                                AddDf[1,1] <- i
                                AddDf[1,2] <- activitylabels$V2[j]
                                AddDf[1,3] <- colnames(forDF1[kf])
                                AddDf[1,4] <- mean(forDF1[,kf])
                                
                                AverageDf <- rbind(AverageDf, AddDf)
                        
                                
                        }
                        
                }                
                
        }
        
        ## assignment of column names
        
        colnames(AverageDf) <- c("subject", "activity", "measure", "mean")
        
        ## export via 'write.table'
        
        write.table(AverageDf, "TidyMeans.txt", sep="\t")       
        
        
}

