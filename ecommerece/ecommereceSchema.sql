create database EcommereceDatabases;
use EcommereceDatabases;
create table Supplier(
sid int not null primary key,
sname varchar(20),
item_name varchar(20)
);
create table Items(
i_no int not null ,
i_name varchar(20),
i_price varchar(20),
sid int not null primary key,
foreign key(sid) references Supplier(sid)
);
create table Orders(
ord_id int not null primary key,
order_name varchar(20),
order_brand varchar(20),
i_no int,
order_date date 
);
create table Customer(
cust_id int not null primary key,
first_name varchar(20),
last_name varchar(20),
order_time timestamp,
ord_id int,
foreign key(ord_id) references Orders(ord_id)
);
