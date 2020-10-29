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

#ability to edit contacts using name
update addressbook
     set city='Jamshedpur' where first_name='Kanishk';

#ability to delete a person using name
 delete from addressbook where first_name='Kanishk' and last_name='Kumar';

#ability to get person froma city or state
select * from addressbook where city='Varanasi' or state='UP';

#ability to count by state and city
select city,count(*) from addressbook group by city;
 select state,count(*) from addressbook group by state;

#Getting contacts sorted based on first_name
select * from addressbook where city='Varanasi' order by first_name;

#ability to alter addressbook for name and type
alter table addressbook add addressbook_name varchar(30) after email_id;
alter table addressbook add addressbook_type varchar(30) after addressbook_name;
 update addressbook set addressbook_name='Friend' where first_name='Kanishk';
update addressbook set addressbook_type='Friends' where first_name='Kanishk';
update addressbook set addressbook_type='Family' where first_name='Adarsh';
update addressbook set addressbook_name='HomeDetails' where first_name='Adarsh';

#ability to count by type
select addressbook_type, count(*) from addressbook group by addressbook_type;

#ability to add contacts in family and friends
insert into addressbook
    (first_name,last_name,address,city,state,zip,phone_number,email_id,addressbook_name,addressbook_type)
    values
    ('Suresh','Singh','u-34','Meerut','UP',2423,546575645,'assd@gmsd.com','FriendsForever','Friends'),
    ('Ramesh','Singhaniya','sfs-34','isadud','MP',2424,787656578,'hgbg@fb.com','OfficePeople','Family');
