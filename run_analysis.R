library(dplyr)

# download and extract data
zipfilename <- 'getdata_projectfiles_UCI HAR Dataset.zip'
if (!file.exists(zipfilename)) {
  download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', destfile = zipfilename)
}
datadirname = 'UCI HAR Dataset'
if (!dir.exists(datadirname)) {
  unzip(zipfilename)
}

# merge test and training sets for subject vector
subject_test <- read.table(paste0(datadirname, '/test/subject_test.txt'), col.names = c('subject'), colClasses = c('factor'))
subject_train <- read.table(paste0(datadirname, '/train/subject_train.txt'), col.names = c('subject'), colClasses = c('factor'))
subject_combined <- rbind(subject_test, subject_train)

# merge test and training sets for activity vector
activity_labels <- tbl_df(read.table(paste0(datadirname, '/activity_labels.txt'), col.names = c('activity_code', 'activity')))
y_test <- read.table(paste0(datadirname, '/test/y_test.txt'), col.names = c('activity_code'))
y_train <- read.table(paste0(datadirname, '/train/y_train.txt'), col.names = c('activity_code'))
y_combined <- tbl_df(rbind(y_test, y_train))
y_combined <- left_join(y_combined, activity_labels, by = 'activity_code') %>% select(activity)

# merge test and training sets for feature vectors
features <- read.table(paste0(datadirname, '/features.txt'), stringsAsFactors = FALSE)$V2
features <- tolower(gsub('[.()-]','',features))
X_test <- read.table(paste0(datadirname, '/test/X_test.txt'), col.names = features)
X_train <- read.table(paste0(datadirname, '/train/X_train.txt'), col.names = features)
X_combined <- rbind(X_test, X_train)
X_mean_std <- X_combined[,grep('mean|std', features)]

# combine subject, activity, and feature vectors into one data set
d <- tbl_df(cbind(subject_combined, y_combined, X_mean_std))

# group data by activity and subject factors
sol <- d %>% group_by(activity, subject) %>% summarize_all(mean) %>% arrange(activity, subject)
write.table(sol, file = 'sol.txt', row.name = FALSE)
