library(plyr)

#loading files

activity<-read.table("./activity_labels.txt")
features<-read.table("./features.txt")
test.subject<-read.table("./test/subject_test.txt")
x.test<-read.table("./test/X_test.txt")
y.test<-read.table("./test/y_test.txt")
train.subject<-read.table("./train/subject_train.txt")
x.train<-read.table("./train/X_train.txt")
y.train<-read.table("./train/y_train.txt")

# merging the data files into one big set of data
# also changin the name of the variables according to make them clear
# the data sets are merged with the command cbing and also rbind
test<-cbind(test.subject,y.test, x.test)
features$V2<-as.character(features$V2)
labels<-c("Subject", "Activity", features$V2)
names(test)<-labels
train<-cbind(train.subject,y.train, x.train)
names(train)<-labels
test<-cbind(test[,1:2],1:length(test$Activity),test[,3:563])
labels<-labels<-c("Subject", "Activity", "Activity Name", features$V2)
names(test)<-labels
train<-cbind(train[,1:2],1:length(train$Activity),train[,3:563])
names(train)<-labels
activity$V2<-as.character(activity$V2)
dataf<-rbind(test,train)
dataf$`Activity Name`<-as.character(dataf$`Activity Name`)

# putting the name of the activities in accordance with the activity number

for(i in 1:length(dataf$Activity))
{
        if(dataf$Activity[i] == 1)
        {
                dataf$`Activity Name`[i]<-activity$V2[1]
        }
        if(dataf$Activity[i] == 2)
        {
                dataf$`Activity Name`[i]<-activity$V2[2]
        }
        if(dataf$Activity[i] == 3)
        {
                dataf$`Activity Name`[i]<-activity$V2[3]
        }
        if(dataf$Activity[i] == 4)
        {
                dataf$`Activity Name`[i]<-activity$V2[4]
        }
        if(dataf$Activity[i] == 5)
        {
                dataf$`Activity Name`[i]<-activity$V2[5]
        }
        if(dataf$Activity[i] == 6)
        {
                dataf$`Activity Name`[i]<-activity$V2[6]
        }
}

# subsetting the data we want 
dataf<-arrange(dataf, dataf$Subject, dataf$Activity)
ok<-c(1,2,3,4,5,6,7,8,9,44,45,46,47,48,49,84,85,86,87,88,
      89,124,125,126,127,128,129,164,165,166,167,168,169,
      204,205,217,218,230,231,243,244,256,257,269,270,271,
      272,273,274,297,298,299,348,349,350,351,352,353,376,377,378,427,428,429,430,
      431,432,455,456,457,506,507,516,519,520,529,532,533,542,545,546,555)
datafinal<-dataf[,ok]

# creating an empty data.frame to the final set of data
final_tidy_data<-data.frame()

# process where we obtain the mean of each variable and we save it in the data frame final_tidy_data

act <- 0
subj<-1
for(i in 1:180)
{
        act<-act+1
        for(j in 4:82)
        {
                if(j==4)
                {
                        final_tidy_data[i,1]<-subj
                        final_tidy_data[i,2]<-activity$V2[act]
                }
                vect1<-tapply(datafinal[,j],(datafinal$Subject==subj & datafinal$Activity==act),mean)
                vect1<-as.numeric(vect1)
                final_tidy_data[i,j-1]<-vect1[2]
                if(act==6 & j ==82)
                {
                        act<-0;
                        subj<-subj+1
                }
                
        }
}

#changing the names of the data frame
fet<-names(datafinal)
names(final_tidy_data)<-c("Subject", "Activity Name", fet[4:82])

#saving the tidy data as a .txt file
write.table(final_tidy_data, "tidy_data.txt", row.names = FALSE)