# Group-9
Disaster Recovery Management

Problem Statement:-
To SELECT, DESIGN AND PLAN DISASTER RECOVERY OF DATABASE
@adityajadhav1052000 - adityairony10@gmail.com

Drawn an ER Diagram and planned base idea about how the project is suppose to work. The general idea is to make a backup database of the Master Database located on a different location than Master Database. The server is connected to the Master Database and is in use such that it is in Read/Write Mode. The Replication of Master Database is made at the same time in Read Mode only. When the disaster occurs, the Master Database is destroyed oe unable to connect. Then the server will automatically shift it's connection from Master Database to Replication Database such that Master Database gets into Read only Mode and Replication of Master Database gets into Read/Write Mode.

@Siddsrk45
siddhu.kumbhar2000@gmail.com
First i created a master db and in that db i created a table . Table had 4 column . Named a as serial no , student name marks and id number. And then i created another database for replication purpose in that i made same column name . And then configured the master database table in master slave replication configuration

 
@Ojas2081
ojasacharekar257@gmail.com
After the discussion on meet, we first made the base plan for our project drew out with the structure of our master db and slave db. As our problem statement suggest that if any of the server goes down at any point of time then user must be able to fetch the required data at that instance. So connecting two db with one server technique is basically database mirroring. 


@Saurabh0104 
saurabhjadhav620@gmail.com
First I created master db and the created slave db that is replication of master db
For our testing purpose we created random tables in our db and same was copied into the slave db
All the data was duplicated and databackup was ready


@tejas0112-
tejasdalvi01@gmail.com

The necessary files were prepared & documented in a proper manner after the complete execution of the problem statement and the documentation was completed & on that basis the final report was prepared



@Dhruvi0410-
dgori6742@gmail.com

In a meet we discussed what all things we need to do and how we are going to execute and create the replication of our database so that we can save the data from being lost. 
We have created master database and slave database . Also,we have created a table to check if our implementation is working fine. We created replications of the data and created a duplicate copy of the data that was present in our table.


@fauziyamkhan@gmail.com
I verified and tested whether all the data were present in column were not null and all data was in order. i checked whether the phpmyadmin database was in a working condition. Then i checked the whether there is a proper primary key with no duplicate value as well as null values present in table. I checked whether the two database are replicated properly in master slave configuration
