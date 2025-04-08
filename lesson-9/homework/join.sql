CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);

select * from Employees
select * from Departments
select * from Customers
select * from Orders
select * from Products
select * from Sales

 Select * from Employees e join Departments d
 on e.DepartmentID=d.DepartmentID
 WHERE Salary > 5000

 Select * from Customers c join Orders o
 on c.CustomerID= o.CustomerID
 Where OrderDate='2023'

 Select Name as EmployeeName,DepartmentName
 from Employees e left outer join Departments d
 on e.DepartmentID=d.DepartmentID

4. Write a query to perform a RIGHT OUTER JOIN between Products and Suppliers, 
showing all suppliers and the products they supply (including suppliers without products).
 Select * from Products right outer join Suppliers 

5. Write a query to demonstrate a FULL OUTER JOIN between Orders and Payments, 
showing all orders and their corresponding payments (including orders without payments and payments without orders).

6. Write a query to perform a SELF JOIN on the Employees table to display employees and their 
respective managers (showing EmployeeName and ManagerName).


Select ProductName,Price,SaleAmount
from Products inner join Sales
on Products.ProductID= Sales.ProductID
Where SaleAmount> 100


8. Write a query to join Students and Courses using INNER JOIN, and use the WHERE clause to show only students 
enrolled in 'Math 101'.
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
11. Write a query to perform an INNER JOIN between Employees and Departments,
and use the WHERE clause to show employees who belong to departments with more than 10 employees.

 Select Employees.EmployeeID, Employees.Name, Departments.DepartmentID,Departments.DepartmentName
 COUNT (Employees.EmployeeID)
 from Employees  inner join Departments 
 on Employees.DepartmentID= Departments.DepartmentID
 Group by Employees.EmployeeID, Employees.Name, Departments.DepartmentID,Departments.DepartmentName
 Having COUNT(Employees.EmployeeID)>10;

12. Write a query to perform a LEFT OUTER JOIN between Products and Sales, 
and use the WHERE clause to filter only products with no sales.

Select * from Products left outer join Sales
 on Products.ProductID=Sales.ProductID
 Where SaleAmount = 0


13. Write a query to perform a RIGHT OUTER JOIN between Customers and Orders,
and filter the result using the WHERE clause to show only customers who have placed at least one order.

SELECT Customers.CustomerID, 
       Customers.FirstName, 
       COUNT(Orders.OrderID) AS OrderCount
FROM Customers RIGHT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.FirstName
HAVING COUNT(Orders.OrderID) > 0;


14. Write a query that uses a FULL OUTER JOIN between Employees and Departments,
and filters out the results where the department is NULL.

SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
FROM Employees FULL OUTER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName is not null

15. Write a query to perform a SELF JOIN on the Employees table to
show employees who report to the same manager.

16. Write a query that uses the logical order of SQL execution to perform a LEFT OUTER JOIN between 
Orders and Customers, followed by a WHERE clause to filter orders placed in the year 2022.

17. Write a query to use the ON clause with INNER JOIN to return only the employees from the 
'Sales' department whose salary is greater than 5000.

 Select * from Employees e join Departments d
 on e.DepartmentID=d.DepartmentID
 WHERE  DepartmentName = 'Sales' and  Salary > 5000

18. Write a query to join Employees and Departments using INNER JOIN, and 
use WHERE to filter employees whose department's DepartmentName is 'IT'

 Select * from Employees e join Departments d
 on e.DepartmentID=d.DepartmentID
 WHERE  DepartmentName = 'IT' 

19. Write a query to join Orders and Payments using a FULL OUTER JOIN, 
and use the WHERE clause to show only the orders that have corresponding payments.

20. Write a query to perform a LEFT OUTER JOIN between Products and Orders, and use 
the WHERE clause to show products that have no orders.
