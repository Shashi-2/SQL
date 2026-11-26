create database learning

create table Employees
(
	id int identity(1,1),
	name varchar(30),
	department varchar(40),
	salary decimal(10,2),
	joining_date  date
);

select * from dbo.Employees

insert into Employees(name,department,salary,joining_date)
values('a','IT',500000,'2025-11-25'),
('b','CS',400000,'2025-12-24'),
('c','EC',200000,'2025-01-23'),
('d','EE',300000,'2025-02-24'),
('e','HR',700000,'2025-06-25'),
('f','sales',800000,'2025-05-21'),
('g','finance',500000,'2025-10-24'),
('h','HR',600000,'2025-07-23'),
('i','CS',700000,'2025-08-25'),
('j','IT',300000,'2025-12-24'),
('k','CIVIL',500000,'2025-11-25');


select department,joining_date from dbo.Employees

--comparison operator
select * from dbo.Employees where department = 'HR'

select * from dbo.Employees where salary > 500000

select * from dbo.Employees where salary <400000

select * from dbo.Employees where department = 'CS'

select name,salary from dbo.Employees where salary =700000

--logical operators

select * from dbo.Employees where department = 'IT' and salary > 400000

select * from dbo.Employees where department = 'HR' or department ='CS'

select * from dbo.Employees where salary > 300000 and salary < 700000

select * from dbo.Employees where department = 'IT' or salary >600000

select * from dbo.Employees where department = 'CS' and salary >500000



select * from dbo.Employees where department in ('IT','HR','CS')

select * from dbo.Employees where salary between 400000 and 700000

select * from dbo.Employees where department in ('IT','CS','EC') and salary >300000

select * from dbo.Employees where department not in ('HR','IT')

select * from dbo.Employees where department in ('HR','IT') and salary >= 500000

--like keyword

select * from dbo.Employees where department like '%l%'


select * from dbo.Employees where department like '%l'


select * from dbo.Employees where department like 'l%'


select * from dbo.Employees where department like 'c%'

select * from dbo.Employees where department like  '%s'

select * from dbo.Employees where department like '%a%'

--order by keyword


select * from dbo.Employees order by salary asc

select * from dbo.Employees order by salary asc,id desc

select * from dbo.Employees order by joining_date asc

select * from dbo.Employees where salary > 400000 order by salary desc

--distinct keyword

select distinct department from dbo.Employees

select * from dbo.Employees where salary between 300000 and 700000 order by salary asc

select * from dbo.Employees where department in('IT','HR','finance') order by joining_date asc

select * from dbo.Employees where name like '%a%' order by name asc

select name,department,salary from dbo.Employees where salary > 400000 order by salary desc 

--Creating new table for primary constraint

create table dbo.student(
	studentid int primary key,
	studentname varchar(30),
	course varchar(40),
	age int
)

select * from dbo.student 

insert into dbo.student (studentid,studentname,course,age)
values
(101,'Aman','Linux',20),
(102,'Bharat','Sql',20),
(103,'Chirag','Cloud',20),
(104,'Dhruv','Ansible',20),
(105,'Emran','Python',20)
;

--checking the voilation of primary key
insert into dbo.student (studentid,studentname,course,age)
values
(101,'Farhan','C Lang',24);

insert into dbo.student (studentid,studentname,course,age)
values
(null,'Gopal','java',25);


--practicing for NOT NULL constraint

create table dbo.student_demo(
	studentid int primary key,
	studentname varchar(20) not null,
	course varchar(30),
	age int 
);


insert into dbo.student_demo(studentid,studentname,course,age)
values
(101,'Rohan','C++',24),
(102,'Ashay','linux',22),
(103,'Ashutosh','gcp',23),
(104,'Karan','C#',25);
select * from dbo.student_demo

insert into dbo.student_demo(studentid,studentname,course,age)
values
(105,NULL,'python',24);

insert into dbo.student_demo(studentid,studentname,course,age)
values
(105,'Rohit',null,null);

insert into dbo.student_demo(studentid,studentname,course,age)
values
(106,'Raman','sql',25),
(107,'Raman','unix',26);


--UNIQUE constraint

create table dbo.uniquestudent
(studentid int primary key,
studentname varchar(20) not null,
email varchar(40) unique,
course varchar(30)
);

insert into dbo.uniquestudent(studentid,studentname,email,course)
values
(01,'Raj','raj123@gmail.com','CS'),
(02,'Shashi','shashi123@gmail.com','IT'),
(03,'Gohan','gohan123@gmail.com','EC'),
(04,'Ronny','ronny123@gmail.com','FS')
;
insert into dbo.uniquestudent(studentid,studentname,email,course)
values
(05,'Raam','raj123@gmail.com','CS');

insert into dbo.uniquestudent(studentid,studentname,email,course)
values
(05,'Raam','raam123@gmail.com','CS');


insert into dbo.uniquestudent(studentid,studentname,email,course)
values
(06,'Raam','kishan123@gmail.com','CS');

select * from dbo.uniquestudent

--DEFAULT constraint

