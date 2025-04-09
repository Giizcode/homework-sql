--1
SELECT Employees.EmployeeID,Employees.FirstName,Employees.Salary FROM Employees
JOIN (SELECT AVG(Salary) AS avgsalary 
 FROM Employees) AS dtavg ON 
 Employees.Salary > dtavg.avgsalary;

--2
 with Salarycte as 
 ( SELECT EmployeeID,
   FirstName, Salary
    FROM Employees)
	Select Employees.EmployeeID,Employees.FirstName,Employees.Salary
	FROM Employees 
	JOIN Salarycte
	ON Salarycte.Salary=Employees.Salary
	AND Salarycte.EmployeeID <> Employees.EmployeeID;


--3

with cte as
(Select DepartmentID, COUNT(EmployeeID) Totalstuff
FROM Employees
GROUP BY DepartmentID
)
Select * from  cte

--4
SELECT Employees.EmployeeID,Employees.FirstName,Employees.Salary FROM Employees
JOIN (SELECT AVG(Salary) AS avgsalary 
 FROM Employees) AS dtavg ON 
 Employees.Salary < dtavg.avgsalary;



--5
with cte as
 (Select ProductID,Count(ProductName) CP
 from Products
 Group by ProductID
 )
 Select * from cte
 WHERE CP>=2;

--6
SELECT dt.EmployeeID, dt.SalesAmount
FROM 
    (SELECT EmployeeID,  SalesAmount
     FROM Sales  
     WHERE SalesAmount > 2000) AS dt;
         
--7
SELECT dt.ProductName,dt.Price FROM
(SELECT ProductName,Price FROM Products) AS dt  
WHERE dt.Price=(SELECT MAX(price)FROM products);

8.Find the total sales made by each employee. (CTE)

with cte as
(SELECT EmployeeID, SUM(SalesAmount) AS TotalSales
        FROM Sales
        GROUP BY EmployeeID
)
       SELECT * FROM cte;


--9
with cte as
(SELECT p.ProductName, s.EmployeeID FROM  Sales s join Products p
ON p.ProductID = s.ProductID)
   SELECT * FROM cte  WHERE ProductName = 'Laptop';

--10

SELECT * FROM (SELECT DepartmentID, MAX(Salary) MaxSalary 
FROM Employees
GROUP BY DepartmentID) AS dt join Departments d
ON d.DepartmentID = dt.DepartmentID



--11
WITH cte AS (
    SELECT DepartmentID, COUNT(EmployeeID) AS emp
    FROM Employees
    GROUP BY DepartmentID
)
SELECT d.DepartmentID, d.DepartmentName
FROM Departments d
LEFT JOIN cte ON d.DepartmentID = cte.DepartmentID
WHERE cte.emp = 0 OR cte.emp IS NULL;


--12
WITH CTE AS  
(SELECT EmployeeID, SUM (SalesAmount) TotalSales
FROM Sales
GROUP BY EmployeeID)
SELECT a.EmployeeID, a.TotalSales
FROM CTE a
JOIN CTE b ON a.TotalSales = b.TotalSales
WHERE a.EmployeeID != b.EmployeeID;

--13
 WITH CTE AS 
 (SELECT ProductID, SUM(SalesAmount)TotalSales FROM Sales
 GROUP BY ProductID)
SELECT p.CategoryID, SUM(cte.TotalSales) AS TotalRevenue
FROM CTE cte
JOIN Products p ON cte.ProductID = p.ProductID
GROUP BY p.CategoryID;

14.Find the top 3 highest-paid employees per department. (Derived Table)
SELECT * FROM Employees
SELECT * FROM Departments

 SELECT TOP 3 Salary FROM Employees
 GROUP BY DepartmentID

15.Find employees who have the highest number of sales transactions. (Derived Table)

SELECT * FROM Sales
SELECT * FROM Products

--16
WITH CTE AS (
    SELECT EmployeeID, COUNT(DISTINCT ProductID) AS DistinctProductsSold
    FROM Sales
    GROUP BY EmployeeID
)
SELECT EmployeeID
FROM CTE
WHERE DistinctProductsSold > 3;

--17

SELECT TOP 1 * FROM (SELECT DepartmentID, SUM(Salary) TotalSalary from Employees
GROUP BY DepartmentID) dt
ORDER BY TotalSalary DESC;

18.Find employees who made sales higher than their departments average sales. (Derived Table)

Select * from 
(SELECT * FROM Sales s join  Employees e
on s.EmployeeID = e.EmployeeID) dt


Difficult Tasks

--19
SELECT * FROM 
(SELECT EmployeeID, SUM (SalesAmount) TotalSales FROM Sales
GROUP BY EmployeeID) dt join Employees 
ON dt.TotalSales > Employees.Salary;

20.Find the department with the most sales transactions. (Derived Table)




21.Find the top-selling employee for each product. (Derived Table)
SELECT * FROM Employees
SELECT * FROM Products
SELECT * FROM Sales

SELECT ProductID,SUM(SalesAmount) FROM Sales
GROUP BY ProductID

