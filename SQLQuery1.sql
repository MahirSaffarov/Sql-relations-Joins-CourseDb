create database Shop
use Shop

create Table Product(
	id int primary key identity(1,1),
	[Name] nvarchar(50),
	[Count] int,
	Price decimal,
	CategoryId int foreign key REFERENCES Category(id)
)

create Table Category(
	id int primary key identity(1,1),
	[Name] nvarchar(50)
)

insert into Product([Name],[Count],[Price],[CategoryId])
values
('Asus',5,3500.55,1),
('Dell',5,4500.55,1),
('Iphone',5,2500.55,3),
('Xiamoi',2,1500.55,3),
('Phlips tozsoran',10,500.55,2)

insert into Category([Name])
values
('Computer'),
('Phone'),
('Cleaner')


SELECT Product.Name, Category.Name
FROM Product
INNER JOIN Category ON Product.CategoryId=Category.id;

SELECT Product.Name, Category.Name
FROM Product
Left JOIN Category ON Product.CategoryId=Category.id;

SELECT Product.Name, Category.Name
FROM Product
Right JOIN Category ON Product.CategoryId=Category.id;

SELECT Product.Name, Category.Name
FROM Product
Full outer JOIN Category ON Product.CategoryId=Category.id;



create table Users(
	id int primary key identity(1,1),
	[FullName] nvarchar(50)
)
create table Roles(
	id int primary key identity(1,1),
	[Role] nvarchar(50)
)

create table UserRoles(
	id int primary key identity(1,1),
	UserId int foreign key REFERENCES Users(id),
	RoleId int foreign key REFERENCES Roles(id)
)

insert into Users([FullName])
values
('MahirSafarov'),
('CavidBashirov'),
('MusaAfandiyev'),
('ResulHesenov'),
('FatimaBayramova')

insert into Roles(Role)
values
('SuperAdmin'),
('Admin'),
('Memmber')

insert into UserRoles(UserId,RoleId)
values
(1,1),
(2,1),
(3,1),
(4,3),
(5,2)


SELECT Users.FullName, Roles.Role
FROM Users
INNER JOIN UserRoles ON Users.id = UserRoles.UserId
INNER JOIN Roles ON UserRoles.RoleId = Roles.id;
