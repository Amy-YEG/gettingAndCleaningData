#download zip from the URL given in course project page, unzip it to working directory

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
download(url, dest="dataset.zip", mode="wb") 
#unzip the data set
unzip ("dataset.zip")

##step 1 - Load Training Data##
#read in the 561 feature vector data in train dataset
train.data<-read.table("UCI HAR Dataset/train/X_train.txt")
#read in the activity identifier, rename the column name
train.activity<-read.table("UCI HAR Dataset/train/y_train.txt")
names(train.activity)<-"activityID"
#load subject for train data
train.subject<-read.table("UCI HAR Dataset/train/subject_train.txt")
names(train.subject)<-"subject"

#checking if the data and activity identifier matches: both have 7352 rows
nrow(train.data)
nrow(train.activity)
nrow(train.subject)

#combine activity identifier,subject with train data
train<-cbind(train.data,train.activity,train.subject)


##step 2 - Load Test Data##
#read in the 561 feature vector data in test datasest
test.data<-read.table("UCI HAR Dataset/test/X_test.txt") 
#read in the activity identifier,rename the column name
test.activity<-read.table("UCI HAR Dataset/test/y_test.txt")
names(test.activity)<-"activityID"
#load subject for test data
test.subject<-read.table("UCI HAR Dataset/test/subject_test.txt")
names(test.subject)<-"subject"

#checking if the data and activity identifier matches: both have 2497 rows
nrow(test.data)
nrow(test.activity)
nrow(test.subject)

#combine activity identifier, subject with test data
test<-cbind(test.data,test.activity,test.subject)


##Step 3 - combine the raw test and train data
data1<-rbind(test,train)

##Step 4 - Exctract only columns mean() std()
#load in feature as column name, set the 1:561 column name using feature data 
#the last two column is activity identifier and subject
features<-read.table("UCI HAR Dataset/features.txt")
colnames(data1)<-c(as.character(features$V2),"activityID","subject")
#Extract column with name containing mean() and std()
col<-c(grep("mean\\()|std\\()",features$V2),562,563)
data2<-data1[,col]




#Step 5 - Replace activityID with Activity Labels
actLabel<-read.table("UCI HAR Dataset/activity_labels.txt")
names(actLabel)<-c("id","activity")
#merge label with data based on activityID
data3<-merge(data2,actLabel,by.x="activityID",by.y="id")
#tidy up the column names, remove () from column names
names(data3)<-gsub("\\()","",names(data3))
#remove activityID (1st column), last two column has activity label and subject
data4<-data3[,2:69]

#Step 6 - create Tidy dataset - mean based on subject and activity
tidyData<-aggregate(data4[,1:66], by=list(subject = data4$subject,activity = data4$activity), FUN=mean)

#write it to a txt file named as tidyData.txt
write.table(tidyData,file='tidyData.txt',row.names = FALSE)







