
#See where your directory is pointing
getwd()

#set your directory (where the files are that you want to read in)
setwd('C:/users/krossi/desktop')

#check to make sure you set the directory correctly
getwd()

#read in the sql library of functions 
install.packages("sqldf") #only need to run once on your machine. Once you do you can delete this code.
library(sqldf) 

#read in the file(s) you want to analyze
users<- read.csv('users.csv', stringsAsFactors = F)
accounts<- read.csv('acccount_status.csv', stringsAsFactors = F)

#see what the data looks like - looks at first 6 records in the table
head(users)
head(accounts)

#write your first sql query - similar to head function above
sqldf("select top 6 * from accounts")

#you can create a new table from the other tables like I did below
connect1<-sqldf("select AccountName as acc from accounts where GoogleAnalytics = 'Configured' ")
head(connect1) #calling the table 

#sample sql query with explainations of each part
pwnotset<- sqldf("select distinct Account from users a 
               where Account in (select acc from connect) 
                   and Account not in (select Account from active)
                   and Account not in (select Account from pwlinksent)
                   and status = 'Password not set' 
                   and Account != '-' ")
   #distinct is similar to grouping
   #where statements are like filtering
   #in / not in statements look at a list and tells you if the data falls in another list. In this eaxample is makes sure that the accounts included are ones that are connected.  


#export the final table back out to excel
write.csv(notreached,'notreached.csv', row.names=F)

#This will be good to get you started, most of the other things you want to do can easily be found via googling it, taking sample code and editing it. That is the best way to learn.  
