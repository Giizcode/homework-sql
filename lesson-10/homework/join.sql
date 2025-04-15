--1
SELECT d.DepartmentName, e.Name as EmployeeName, e.Salary 
    FROM Employees e join Departments d
    ON e.DepartmentID= d.DepartmentID
AND e.Salary>50000;
--2	
SELECT c.FirstName,c.LastName,o.OrderDate 
	FROM Customers c join Orders o 
	ON o.CustomerID = c.CustomerID
WHERE YEAR( o.OrderDate)=2023;
--3
SELECT d.DepartmentName, e.Name as EmployeeName 
 FROM Employees e left outer join Departments d
 ON e.DepartmentID= d.DepartmentID

--4
SELECT s.SupplierName,p.ProductName 
FROM Products p left outer join Suppliers s
ON p.SupplierID = s.SupplierID;

--5
  SELECT o.OrderID, o.OrderDate, p.PaymentDate,p.Amount
  FROM Orders o full outer join Payments p
  ON o.OrderID = p.OrderID;


--6
   SELECT e2.Name AS ManagerName, e1.Name AS EmployeeName
   FROM Employees e1 join Employees e2
   ON e1.EmployeeID = e2.ManagerID;

  

--7
   SELECT s.Name as StudentName, c.CourseName from Students s 
   JOIN Enrollments e ON s.StudentID = e.StudentID
   JOIN Courses c ON e.CourseID = c.CourseID
   WHERE c.CourseName = 'Math 101';

--8
   SELECT c.FirstName, c.LastName, o.Quantity 
   FROM Customers c join Orders o 
   ON c.CustomerID = o.CustomerID
   WHERE o.Quantity >3;

--9
	 SELECT e.Name as EmployeeName, d.DepartmentName
     FROM Employees e join Departments d
     ON e.DepartmentID= d.DepartmentID
     AND DepartmentName= 'Human Resources';
 
--10
	WITH CTE AS 
	(Select DepartmentID,COUNT(EmployeeID) AS EmployeeCount
	       FROM Employees
	       Group by DepartmentID) 
	 SELECT  d.DepartmentName, CTE.EmployeeCount
	       FROM CTE JOIN Departments d
	       ON CTE.DepartmentID= d.DepartmentID
	       WHERE EmployeeCount > 10;

--11
 SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;

--12
   WITH CTE AS (
   SELECT CustomerID, COUNT(OrderID) AS TotalOrders
   FROM Orders 
   Group by CustomerID
   )
   SELECT c.FirstName, c.LastName, cte.TotalOrders
   FROM CTE JOIN Customers C
   ON c.CustomerID = CTE.CustomerID;


--13 
	SELECT e.Name as EmployeeName, d.DepartmentName
     FROM Employees e join Departments d
     ON e.DepartmentID= d.DepartmentID


--14
   SELECT e1.Name AS Employee1, e2.Name AS Employee2, e1.ManagerID
  FROM Employees e1 JOIN Employees e2 ON e1.ManagerID = e2.ManagerID
   WHERE e1.EmployeeID < e2.EmployeeID;
 

--15
   SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName 
   FROM Customers c join Orders o 
   ON c.CustomerID = o.CustomerID
   WHERE YEAR( o.OrderDate)=2022;

--16
    SELECT e.Name as EmployeeName,e.Salary, d.DepartmentName
     FROM Employees e join Departments d
     ON e.DepartmentID= d.DepartmentID
     WHERE DepartmentName = 'Sales' AND Salary < 60000;

--17
   SELECT o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
   FROM Orders o join Payments p 
   ON o.OrderID = p.OrderID;

--18

   SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN  Orders o ON p.ProductID = o.ProductID
WHERE o.ProductID IS NULL;


--19

with cte as (
SELECT AVG(Salary) AS TotalAvg  FROM Employees
) 
 SELECT e.Name as EmployeeName,e.Salary
 FROM CTE JOIN Employees e
 ON cte.TotalAvg < Salary;
   

--20

 SELECT o.OrderID, o.OrderDate
FROM Orders o LEFT JOIN Payments p 
ON o.OrderID = p.OrderID
WHERE p.OrderID IS NULL
 AND YEAR(o.OrderDate) < 2020;



--21
SELECT p.ProductID, p.ProductName
FROM Products p LEFT JOIN Categories c 
ON p.Category = c.CategoryName
WHERE c.CategoryName IS NULL;

--22 
SELECT e1.Name AS Employee1, e2.Name AS Employee2, e1.ManagerID, e1.Salary
FROM Employees e1 JOIN Employees e2 
ON e1.ManagerID = e2.ManagerID
WHERE e1.EmployeeID < e2.EmployeeID
  AND e1.Salary > 60000 AND e2.Salary > 60000;


--23
    SELECT e.Name as EmployeeName, d.DepartmentName
     FROM Employees e join Departments d
     ON e.DepartmentID = d.DepartmentID
     WHERE e.Name like 'M%';


--24
   
   SELECT s.SaleID, p.ProductName, s.SaleAmount
   FROM Sales s JOIN Products p ON s.ProductID = p.ProductID
    WHERE s.SaleAmount > 500;

--25
   SELECT s.StudentID, s.Name AS StudentName FROM Students s
 WHERE s.StudentID NOT IN (
    SELECT e.StudentID
    FROM Enrollments e
    JOIN Courses c ON e.CourseID = c.CourseID
    WHERE c.CourseName = 'Math 101');
