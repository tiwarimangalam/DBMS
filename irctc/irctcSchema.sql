create database irctcdatabase;
use irctcdatabase;
create table Train(
t_no int not null ,
t_name varchar(20),
start_time timestamp,
end_time timestamp,
cust_id int not null primary key
-- foreign key(cust_id) references Customer(cust_id)
);
create table Customer(
cust_id int not null primary key,
tick_no int,
t_no int ,
first_name varchar(20),
second_name varchar(20),
booking_time timestamp,
is_resv varchar(10),
check(is_resv in ('booked', 'not_booked')),
foreign key(cust_id) references Train(cust_id)
);
-- drop table Customer;
-- drop table Train;
create table Ticket(
tick_no int,
t_no int primary key,
cust_id int,
t_name varchar(20),
-- cust_id int,
booking_time timestamp,
is_resv varchar(10),
check(is_resv in ('booked', 'not_booked')),
foreign key(cust_id) references Customer(cust_id)
-- foreign key(t_no) references Train(t_no)
);

ALTER TABLE Ticket
ADD CONSTRAINT t_no
FOREIGN KEY (cust_id) REFERENCES Train(cust_id);