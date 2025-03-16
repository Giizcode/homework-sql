Select * from Employees e join Departments d
 on e.DepartmentID=d.DepartmentID
 WHERE Salary > 5000

 Select * from Customers c join Orders o
 on c.CustomerID= o.CustomerID
 Where OrderDate='2023'

 Select Name as EmployeeName,DepartmentName
 from Employees e left outer join Departments d
 on e.DepartmentID=d.DepartmentID


Select ProductName,Price,SaleAmount
from Products inner join Sales
on Products.ProductID= Sales.ProductID
Where SaleAmount> 100


----8
Select * from Students Join Courses 
on 
Where Enrollement= 'Math 101'


 Select Customers.CustomerID, Customers.FirstName,
 COUNT(Orders.OrderID) AS Order_Count  From Customers 
 inner join Orders on Customers.CustomerID= Orders.CustomerID
 Group by Customers.CustomerID, Customers.FirstName
 Having Count (Orders.OrderID)>3;

 Select * from Employees e left outer join Departments d
 on e.DepartmentID=d.DepartmentID
 Where DepartmentName='Human Resources'

----  Medium Level  ----
---11. 

 Select Employees.EmployeeID, Employees.Name, Departments.DepartmentID,Departments.DepartmentName
 COUNT (Employees.EmployeeID)
 from Employees  inner join Departments 
 on Employees.DepartmentID= Departments.DepartmentID
 Group by Employees.EmployeeID, Employees.Name, Departments.DepartmentID,Departments.DepartmentName
 Having COUNT(Employees.EmployeeID)>10;

---12. 

Select * from Products left outer join Sales
 on Products.ProductID=Sales.ProductID
 Where SaleAmount = 0


-----13

SELECT Customers.CustomerID, 
       Customers.FirstName, 
       COUNT(Orders.OrderID) AS OrderCount
FROM Customers RIGHT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.FirstName
HAVING COUNT(Orders.OrderID) > 0;


-----14.

SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
FROM Employees FULL OUTER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName is not null

--15. 
--16. 

----17. 

 Select * from Employees e join Departments d
 on e.DepartmentID=d.DepartmentID
 WHERE  DepartmentName = 'Sales' and  Salary > 5000

---18. 

 Select * from Employees e join Departments d
 on e.DepartmentID=d.DepartmentID
 WHERE  DepartmentName = 'IT'
