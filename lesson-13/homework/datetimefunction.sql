
--1
SELECT SUBSTRING('DATABASE', 1, 4)
--2
SELECT CHARINDEX('SQL', 'I love SQL Server')

--3  
SELECT REPLACE('Hello World', 'World', 'SQL')

--4
SELECT LEN('Microsoft SQL Server')

--5  
SELECT RIGHT('Database', 3)

6️⃣ **Count a Character** → Count occurrences of **'a'** in **'apple', 'banana', 'grape'**.  
--7
SELECT SUBSTRING('abcdefg', 6, LEN('abcdefg') - 5)

8️⃣ **Extract a Word** → Extract second word from **'SQL is powerful', 'I love databases'**. 

--9
SELECT ROUND(15.6789, 2);

--10 
SELECT ABS(-345.67);



---  

--11
SELECT SUBSTRING('ABCDEFGHI', 4, 3);
--12
SELECT STUFF('Microsoft', 1, 3, 'XXX');

--13  
SELECT CHARINDEX(' ', 'SQL Server 2025');

--14
SELECT CONCAT_WS(',','FirstName','LastName')


1️⃣5️⃣ **Find Nth Word** → Extract **third word** from **'The database is very efficient'**.

--16
SELECT SUBSTRING('INV1234', PATINDEX('%[0-9]%', 'INV1234'), LEN('INV1234'))
SELECT SUBSTRING('ORD5678', PATINDEX('%[0-9]%', 'ORD5678'), LEN('ORD5678'))

--17  
SELECT CEILING(99.5)

--18 
SELECT DATEDIFF(day,'2025-01-01','2025-03-15')

--19
SELECT DATENAME (month,'2025-06-10')

--20
SELECT DATEPART (WEEK,'2025-04-22')

---  
--21
SELECT RIGHT ('user1@gmail.com',LEN('user1@gmail.com')-CHARINDEX('@','user1@gmail.com'));
SELECT RIGHT ('admin@company.org',LEN('admin@company.org')-CHARINDEX('@','admin@company.org'));

--22 
SELECT LEN('experience') - CHARINDEX('e', REVERSE('experience')) + 1; 

2️⃣3️⃣ **Generate Random Number** → Random number **between 100-500**. 


--24
SELECT CONCAT_WS (',','9','876','543')
SELECT FORMAT(9876543, 'N0');


--25
CREATE TABLE Customers (FullName VARCHAR(100)); 
INSERT INTO Customers VALUES ('John Doe'), ('Jane Smith')**.
SELECT * FROM Customers
SELECT SUBSTRING (FullName,1,CHARINDEX(' ',FullName))from Customers;

--26
SELECT REPLACE('SQL Server is great',' ','-');

--27  
SELECT FORMAT(42,'00000')

2️⃣8️⃣ **Find Longest Word Length** → Longest word in **'SQL is fast and efficient'**.  
SELECT LEN('SQL is fast and efficient')


2️⃣9️⃣ **Remove First Word** → Remove first word from **'Error: Connection failed'**. Output: **: 'Connection failed'** 

SELECT SUBSTRING ('Error: Connection failed',CHARINDEX(' ','Error: Connection failed')+1)
--30 
SELECT DATEDIFF(MINUTE,'08:15:00','09:45:00')
