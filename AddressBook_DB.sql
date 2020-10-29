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
#ability to insert new contacts
 insert into addressbook
    (first_name,last_name,address,city,state,zip,phone_number,email_id)
    values('Kanishk','Kumar','Sh-3/40','Varanasi','UP',221003,89385384,'kasn@gmail.com'),
    ('Adarsh','Amasn','sds-34','Giridih','Bihar',4645,767564545,'asas@gmail.com');
