-- JOIN Opgave

/*
1.
Opret en SELECT sætning der viser følgende felter:
ProductID
ProductName
CategoryName
*/
SELECT 
	Products.ProductID,
	Products.ProductName,
	Categories.CategoryName
FROM Products left JOIN Categories
ON Products.CategoryID = Categories.CategoryID;


/*
2.
Opret en SELECT sætning der indeholder følgende felter:
ProductID
ProductName
CompanyName
*/
SELECT 
	Products.ProductID,
	Products.ProductName,
	Suppliers.CompanyName
FROM Products right JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID;


/*
3.
Opret en SELECT sætning der indeholder følgende felter
OrderID
CompanyName
Name som består af FirstName og LastName
*/
SELECT
	Orders.OrderID,
	Customers.CompanyName,
	CONCAT(Employees.FirstName, ' ', Employees.LastName) AS Name,
    concat_ws(' ',Employees.FirstName, Employees.LastName) AS Name2
FROM Employees INNER JOIN Orders 
ON Employees.EmployeeID = Orders.EmployeeID 
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID;


/*
4.
Opret en SELECT sætning der indeholder følgende felter:
OrderId
CompanyName
ProductName
*/
SELECT
	Orders.OrderID,
	customers.CompanyName,
	Products.ProductName
FROM Customers INNER JOIN Orders
ON customers.CustomerID = Orders.CustomerID
INNER JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID
INNER JOIN Products
ON Order_Details.ProductID = Products.ProductID
ORDER BY OrderID;

/*
5.
Find alle Products (ProductName og ProductID)
Der er solgt i maj månede 1997
*/
SELECT 
	Products.ProductID,
	Products.ProductName
FROM Products INNER JOIN Order_Details
ON Products.ProductID = Order_Details.ProductID
INNER JOIN Orders
ON Order_Details.OrderID = Orders.OrderID
WHERE YEAR(OrderDate) = 1997
AND MONTH(OrderDate) = 5;
