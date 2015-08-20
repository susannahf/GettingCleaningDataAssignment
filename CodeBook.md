# Codebook for getting and cleaning data assignment

## Data
The data comes from the UCI Human Activity Recognition Using Smartphones Dataset, which can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The final clean dataset is in finalData

### SubjectID
The ID number of the subject (1-30)


### Feature Variables

These variables are in either the time or frequency domain (fft of time domain), and may have derived from either an accelerometer or a gyroscope.  The table below given a description of each variable.

|Variable name| Source | Domain | Description | Units | 
----------|------------|------|-------|-------
| timeBodyAccelerometer-meanX | accelerometer | time | mean X acceleration of body | m/s/s |
| timeBodyAccelerometer-meanY | accelerometer | time | mean Y acceleration of body | m/s/s |                      
| timeBodyAccelerometer-meanZ | accelerometer | time | mean Z acceleration of body | m/s/s |
| timeBodyAccelerometer-StandardDeviationX | accelerometer | time | standard deviation of X acceleration of body | m/s/s |
| timeBodyAccelerometer-StandardDeviationY | accelerometer | time | standard deviation of Y acceleration of body | m/s/s |      
| timeBodyAccelerometer-StandardDeviationZ | accelerometer | time | standard deviation of Z acceleration of body | m/s/s |
| timeGravityAccelerometer-meanX | accelerometer | time | mean gravitational X acceleration | m/s/s | 
| timeGravityAccelerometer-meanY | accelerometer | time | mean gravitational Y acceleration | m/s/s |                   
| timeGravityAccelerometer-meanZ | accelerometer | time | mean gravitational Z acceleration | m/s/s |
| timeGravityAccelerometer-StandardDeviationX | accelerometer | time | standard deviation of gravitational X acceleration | m/s/s |
| timeGravityAccelerometer-StandardDeviationY | accelerometer | time | standard deviation of gravitational Y acceleration | m/s/s |      
| timeGravityAccelerometer-StandardDeviationZ | accelerometer | time | standard deviation of gravitational Z acceleration | m/s/s |
| timeBodyAccelerometerJerk-meanX | accelerometer | time | mean X jerk of body | m/s/s/s |
| timeBodyAccelerometerJerk-meanY | accelerometer | time | mean Y jerk of body | m/s/s/s |                  
| timeBodyAccelerometerJerk-meanZ | accelerometer | time | mean Z jerk of body | m/s/s/s |
| timeBodyAccelerometerJerk-StandardDeviationX | accelerometer | time | standard deviation of X jerk of body | m/s/s/s |
| timeBodyAccelerometerJerk-StandardDeviationY | accelerometer | time | standard deviation of Y jerk of body | m/s/s/s |     
| timeBodyAccelerometerJerk-StandardDeviationZ | accelerometer | time | standard deviation of Z jerk of body | m/s/s/s |
| timeBodyGyroscope-meanX | gyroscope | time | mean X angular acceleration of body | m/s/s |                         
| timeBodyGyroscope-meanY | gyroscope | time | mean Y angular acceleration of body | m/s/s |                          
| timeBodyGyroscope-meanZ | gyroscope | time | mean Z angular acceleration of body | m/s/s |
| timeBodyGyroscope-StandardDeviationX | gyroscope | time | standard deviation of X angular acceleration of body | m/s/s |           
| timeBodyGyroscope-StandardDeviationY | gyroscope | time | standard deviation of Y angular acceleration of body | m/s/s |             
| timeBodyGyroscope-StandardDeviationZ | gyroscope | time | standard deviation of Z angular acceleration of body | m/s/s |
| timeBodyGyroscopeJerk-meanX | gyroscope | time | mean X angular jerk of body | m/s/s/s |                 
| timeBodyGyroscopeJerk-meanY | gyroscope | time | mean Y angular jerk of body | m/s/s/s |              
| timeBodyGyroscopeJerk-meanZ | gyroscope | time | mean Z angular jerk of body | m/s/s/s |
| timeBodyGyroscopeJerk-StandardDeviationX | gyroscope | time | standard deviation of X angular jerk of body | m/s/s/s |        
| timeBodyGyroscopeJerk-StandardDeviationY | gyroscope | time | standard deviation of Y angular jerk of body | m/s/s/s |
| timeBodyGyroscopeJerk-StandardDeviationZ | gyroscope | time | standard deviation of Y angular jerk of body | m/s/s/s |
| timeBodyAccelerometerMag-mean | accelerometer | time | mean of body acceleration magnitude | m/s/s|            
| timeBodyAccelerometerMag-StandardDeviation | accelerometer | time | standard deviation of body acceleration magnitude | m/s/s | 
| timeGravityAccelerometerMag-mean"                 
| timeGravityAccelerometerMag-StandardDeviation"    
| timeBodyAccelerometerJerkMag-mean"                
| timeBodyAccelerometerJerkMag-StandardDeviation"   
| timeBodyGyroscopeMag-mean"                        
| timeBodyGyroscopeMag-StandardDeviation"           
| timeBodyGyroscopeJerkMag-mean"                    
| timeBodyGyroscopeJerkMag-StandardDeviation"       
| fftBodyAccelerometer-meanX"                       
| fftBodyAccelerometer-meanY"                       
| fftBodyAccelerometer-meanZ"                       
| fftBodyAccelerometer-StandardDeviationX"          
| fftBodyAccelerometer-StandardDeviationY"          
| fftBodyAccelerometer-StandardDeviationZ"          
| fftBodyAccelerometerJerk-meanX"                   
| fftBodyAccelerometerJerk-meanY"                   
| fftBodyAccelerometerJerk-meanZ"                   
| fftBodyAccelerometerJerk-StandardDeviationX"      
| fftBodyAccelerometerJerk-StandardDeviationY"      
| fftBodyAccelerometerJerk-StandardDeviationZ"      
| fftBodyGyroscope-meanX"                           
| fftBodyGyroscope-meanY"                           
| fftBodyGyroscope-meanZ"                           
| fftBodyGyroscope-StandardDeviationX"              
| fftBodyGyroscope-StandardDeviationY"              
| fftBodyGyroscope-StandardDeviationZ"              
| fftBodyAccelerometerMag-mean"                     
| fftBodyAccelerometerMag-StandardDeviation"        
| fftBodyBodyAccelerometerJerkMag-mean"             
| fftBodyBodyAccelerometerJerkMag-StandardDeviation"
| fftBodyBodyGyroscopeMag-mean"                     
| fftBodyBodyGyroscopeMag-StandardDeviation"        
| fftBodyBodyGyroscopeJerkMag-mean"                 
| fftBodyBodyGyroscopeJerkMag-StandardDeviation"    
| activity"                    




### TimeBodyAccelerometer-meanX, TimeBodyAccelerometer-meanY, TimeBodyAccelerometer-meanZ


### timeBody







### activity
The activity being carried out, coded as a factor.  Possible activities are:
- 1. WALKING 
- 2. WALKING_UPSTAIRS
- 3. WALKING_DOWNSTAIRS
- 4. SITTING
- 5. STANDING
- 6. LAYING


## Transformations
The test and training datasets have been joined, with the test dataset first and the training dataset second.  All rows from each dataset are included.

The subject ID has been added as the first column ("Subject ID")

The activity type, coded as a factor, has been added as the last column ("activity")

Only features containing "mean(" or "std(" in the original feature name have been retained.  All other features have been discarded.


NOTE TO SELF: FEATURE DESCRIPTIONS IN FEATURES_INFO.TXT, INCLUDE UNITS
