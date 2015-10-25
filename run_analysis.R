
dataSetName <- "UCI HAR Dataset.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_path <- "UCI HAR Dataset"

## Install required packacets  
# Checks if package is installed

if(!is.element("plyr", installed.packages()[,1])){
    print("Installing packages")
    install.packages("plyr")
}

library(plyr)

## Create data and folders   
# Verifies the data zip file has been downloaded
if(!file.exists(dataSetName)){
    
    ## Downloads the data file
    print("Downloading Data")
    download.file(url,dataSetName, mode = "wb")
    
}

## Reads a table from the zip data file and applies cols
getTable <- function (filename,cols = NULL){
    
    print(paste("Getting table:", filename))
    
    file <- unz(dataSetName, paste(data_path, filename, sep="/"))
    
    data <- data.frame()
    
    if(is.null(cols)){
        data <- read.table(file, sep="",stringsAsFactors=F)
    } else {
        data <- read.table(file, sep="",stringsAsFactors=F, col.names= cols)
    }
    
    return(data);    
}

## Get common data tables

# Features used for col names when creating train and test data sets
features <- getTable("features.txt")

## Reads and creates a complete data set
getData <- function(type, features){
    
    print(paste("Getting data", type))
    
    subject_data <- getTable(paste(type,"/","subject_",type,".txt",sep=""),"id")
    y_data <- getTable(paste(type,"/","y_",type,".txt",sep=""),"activity")    
    x_data <- getTable(paste(type,"/","X_",type,".txt",sep=""),features$V2) 
    
    return (cbind(subject_data,y_data,x_data)) 
}
## Load the data sets
train <- getData("train",features)
test <- getData("test",features)

## 1. Merges the training and the test sets to create one data set. < DONE
# Merge datasets
data <- rbind(train, test)

# Rearrange the data using id
data <- arrange(data, id)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
firstDataSet <- data[,c(1,2,grep("std", colnames(data)), grep("mean", colnames(data)))]

## Saves the data into the result folder
saveTable <- function (data,file){
    
    print(paste("Saving DataSet:", file))
    
    write.table(data, file, row.name=FALSE)
}

# Save firstDataSet into results folder
saveTable(firstDataSet,"FirstDataset.txt")


## 3. Uses descriptive activity names to name the activities in the data set < DONE
## 4. Appropriately labels the data set with descriptive activity names.  < DONE

activity_labels <- getTable("activity_labels.txt")

data$activity <- factor(data$activity, levels=activity_labels$V1, labels=activity_labels$V2)


## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tidyDataSet <- ddply(firstDataSet, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })

# Adds "_avg" to colnames
colnames(tidyDataSet)[-c(1:2)] <- paste(colnames(tidyDataSet)[-c(1:2)], "_avg", sep="")


# Save tidy tidyDataSet into results folder
saveTable(tidyDataSet,"TidyDataSet.txt")


