#Codebook of run_analysis.R script

Once you execute the script, you will obtain a final file called "tidy_data.txt". In this file you will find a big quantity of data formed of different variables. 

#Variables

In the file you are going to find different variables, the variables you are going to find are the following next variables which are explained in the following paragraphs.
 
Some of the variables correspond to an accelerometer or the gyroscope of the smartphone which is being analized. Also, we are going to obtain some measurements of the initial data. The xyz refers to the axial direction of the measurement, for example, we can obtain the acceleration of the smartphone in the x axial direction. 

* Subject
* Activtity
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

For the accelerometer it is used the word

* Acc 

For the gyroscopic it is used the word 

* Gyro

Then, from each feature it is going to be calculated the mean, the standard deviation and in some cases, the meanfreaq which is the wieghted average of the frequency components. Then, from each varible it is going to be calculated the mean. In this case, the measurment is adimensional in nearly all the variables, because the variables are normalized. In this case, the unique varibles that are not normalized are the subject and the activity. 

The functions used in the original dataset are:

* mean() - Mean value
* std() - Standard deviation
* meanFreq - Weighted average of the frequency components to obtain a mean frequency

The subject variable is the variable that tells us which subject is being tested. In this case, the subjects are from 1 to 30. 
In the case of the activity we have 6 activities numered from 1 to 6.

* 1 - WALKING
* 2 - WALKING_UPSTAIRS
* 3 - WALKING_DOWNSTAIRS
* 4 - SITTING
* 5 - STANDING
* 6 - LAYING