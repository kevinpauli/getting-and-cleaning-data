# getting-and-cleaning-data

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

It reads the source dataset, combines the test and training data sets, then selects only variables that represent mean and standard deviations.  It then groups the data by activity and subject, calculates the mean for the variables in question, and writes the result to sol.txt.

The final result has the following variables: 

  activity - What activity the person was doing when the data was collected
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

  subject - identifier for which subject the observation is for.  May be from one to 30
  
Each combination of activity and subject will appear at most once in the result table.

The following are the remaining variables, which are floating point values representing the average of the original observations, for this activity and subject.

  tbodyaccmeanx
  tbodyaccmeany
  tbodyaccmeanz
  tbodyaccstdx
  tbodyaccstdy
  tbodyaccstdz
  tgravityaccmeanx
  tgravityaccmeany
  tgravityaccmeanz
  tgravityaccstdx
  tgravityaccstdy
  tgravityaccstdz
  tbodyaccjerkmeanx
  tbodyaccjerkmeany
  tbodyaccjerkmeanz
  tbodyaccjerkstdx
  tbodyaccjerkstdy
  tbodyaccjerkstdz
  tbodygyromeanx
  tbodygyromeany
  tbodygyromeanz
  tbodygyrostdx
  tbodygyrostdy
  tbodygyrostdz
  tbodygyrojerkmeanx
  tbodygyrojerkmeany
  tbodygyrojerkmeanz
  tbodygyrojerkstdx
  tbodygyrojerkstdy
  tbodygyrojerkstdz
  tbodyaccmagmean
  tbodyaccmagstd
  tgravityaccmagmean
  tgravityaccmagstd
  tbodyaccjerkmagmean
  tbodyaccjerkmagstd
  tbodygyromagmean
  tbodygyromagstd
  tbodygyrojerkmagmean
  tbodygyrojerkmagstd
  fbodyaccmeanx
  fbodyaccmeany
  fbodyaccmeanz
  fbodyaccstdx
  fbodyaccstdy
  fbodyaccstdz
  fbodyaccmeanfreqx
  fbodyaccmeanfreqy
  fbodyaccmeanfreqz
  fbodyaccjerkmeanx
  fbodyaccjerkmeany
  fbodyaccjerkmeanz
  fbodyaccjerkstdx
  fbodyaccjerkstdy
  fbodyaccjerkstdz
  fbodyaccjerkmeanfreqx
  fbodyaccjerkmeanfreqy
  fbodyaccjerkmeanfreqz
  fbodygyromeanx
  fbodygyromeany
  fbodygyromeanz
  fbodygyrostdx
  fbodygyrostdy
  fbodygyrostdz
  fbodygyromeanfreqx
  fbodygyromeanfreqy
  fbodygyromeanfreqz
  fbodyaccmagmean
  fbodyaccmagstd
  fbodyaccmagmeanfreq
  fbodybodyaccjerkmagmean
  fbodybodyaccjerkmagstd
  fbodybodyaccjerkmagmeanfreq
  fbodybodygyromagmean
  fbodybodygyromagstd
  fbodybodygyromagmeanfreq
  fbodybodygyrojerkmagmean
  fbodybodygyrojerkmagstd
  fbodybodygyrojerkmagmeanfreq
  angletbodyaccmean.gravity
  angletbodyaccjerkmean.gravitymean
  angletbodygyromean.gravitymean
  angletbodygyrojerkmean.gravitymean
  anglex.gravitymean
  angley.gravitymean
  anglez.gravitymean
 