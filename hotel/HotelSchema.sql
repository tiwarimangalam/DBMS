create database Hotel;
use Hotel;
create table Hotel(
h_no int not null ,
h_name varchar(20),
room_no int,
entry_date datetime,
cust_id int not null primary key
);
create table Customer(
cust_id int not null primary key,
first_name varchar(20),
last_name varchar(20),
booking_time timestamp,
is_book varchar(10),
check(is_book in ('first_time', 'loyal')),
foreign key(cust_id) references Hotel(cust_id)
);
