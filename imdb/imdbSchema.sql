create database imdb;
use imdb;
create table Movie(
m_id int not null primary key,
m_name varchar(20)
);
create table TV_Series(
tv_id int not null primary key,
tv_name varchar(20)
);
create table Actor(
a_name varchar(20),
m_id int,
tv_id int,
foreign key(m_id) references Movie(m_id),
foreign key(tv_id) references Tv_Series(tv_id)
);

