DDL is a data definition language main commands are [Create;Alter;Drop;Truncate] 
as an example we can create a table and change with the help  of Alter command
create table staff (name varchar (20),age int,position varchar(20))
Alter table staff
add department varchar(20)
select *from staff
DML is a data manipulation language commands are [Insert,Update,Delete]
insert into staff values ('Anna',21,'frontend','IT') 
insert into staff values ('Ali',25,'accountant','Finance') 
delete from staff
where age<22

EmpID (INT, PRIMARY KEY), Name (VARCHAR(50)), Salary (DECIMAL(10,2)).
Create table Employees (EmpID int PRIMARY KEY, Name varchar(50),Salary decimal (10,2))
select*from Employees


insert into Employees values (1,'Linda',1000)
insert into Employees values (2,'Yana',1200)
insert into Employees values (3,'Rose',900)
insert into Employees values (4,'Bob',1100)

Update employees
set Salary=900
where EmpID=1


DELETE FROM employees
where EmpID=2


with the help of truncate we can delete information in the table but the structure and column of the table  remains.
drop removes table from the database. delete command one or more records from the table
delete from Employees
where salary=1100
truncate table Employees

Alter table employees
Modify Name varchar(100)?

ALTER table Employees
add department varchar (50)
Truncate command removes information from the table but structure of the table and column remains.
