create database Paytm;
use Paytm;
create table Branches(
b_name varchar(20),
b_address varchar(100),
b_id int not null primary key
);
create table Accounts(
acc_no int not null primary key,
b_id int,
foreign key(b_id) references Branches(b_id)
);
create table Customer(
acc_no int not null primary key,
first_name varchar(20),
last_name varchar(20),
address varchar(100),
foreign key(acc_no) references Accounts(acc_no)
);
