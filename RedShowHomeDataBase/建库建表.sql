create database RedShowHome;
using RedShowHome;
create table Users
(
UserID int primary key identity(1,1),
UserName nvarchar(10) not null,
UserType tinyint not null,
LoginEmail varchar(30) unique not null,
LoginPassword varchar(20) not null,
Photo nvarchar(50) not null
)
create table House
(
HouseID int primary key identity(1,1),
Address nvarchar(50) not null,
Status tinyint not null,
Area int not null,
HouseType tinyint not null,
DecorationWay tinyint not null,
Ichnography nvarchar(50),
Description nvarchar(100)
)
create table NormalUsers
(
UserID int  foreign key references Users(UserID) not null,
HouseID int foreign key references House(HouseID) not null,
CollectedUserID int foreign key references Users(UserID),
Sex bit not null,
Phone varchar(20) ,
EnjoyStyle varchar(20)
)
 