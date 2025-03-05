select * from Employees
select * from Products
select * from Customers
SELECT * FROM Sales

select MIN (price) from Products
select MAX (salary) from Employees
select  COUNT (*) from Customers
select COUNT(DISTINCT Category) from Products 
select DISTINCT Category from Products 
select ProductID, SUM(SaleAmount) from Sales
group by ProductID 
select  AVG(AGE) from Employees
Alter table Employees
add AGE INT
INSERT INTO Employees (AGE) VALUES (20),(25),(27),(30),(41),(23),(22),(20),(37),(48),(20),(50),(20),(19),(20),(28),(20),(33),(24),(44),
(19),(20),(25),(26),(20),(24),(20),(29),(20),(30),(37),(49),(20),(42),(38),(35),(35),(29),(50),(45);
--COULDNT ADD COLUMN---
 SELECT DepartmentID, COUNT (EmployeeID)  from Employees
 group by DepartmentID
 Select category, MIN(price), MAX(price) from products
 group by category

SELECT DepartmentID, COUNT (EmployeeID)  from Employees
 group by DepartmentID
 Having SUM (EmployeeID)>5
