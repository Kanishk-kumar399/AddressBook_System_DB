#Address_Book_DB

#Create database and use it
create database addressbook-service;
use addressbook_service;

#create addressBook table
craete table addressbook
(
   first_name    varchar(150) not null,
   last_name     varchar(150) not null,
   address       varchar(400), 
   city	   	 varchar(20),
   state	 varchar(20),
   zip		 int unsigned,
   phone_number	 int unsigned,
   email_id    	 varchar(100) not null,
   primary key   (email_id)
);

