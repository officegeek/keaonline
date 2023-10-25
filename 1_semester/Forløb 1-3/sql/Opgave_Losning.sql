USE Northwind;

-- 1
select distinct ShipCountry from orders;

-- 2
select * from products
order by UnitPrice desc;

-- 3
select * from customers
where Country in ('UK', 'Spain');

-- 4
select * from products
where UnitsInStock > 100 and UnitPrice >= 25;

-- 5 
select * from products
where UnitPrice >= 25;

-- 6 
select * from orders
where month(OrderDate) = 10 and year(OrderDate) = 1996;

-- 7 
select * from orders
where ShipRegion is null 
and ShipCountry = 'Germany' 
and Freight >= 100 
and EmployeeID = 1 
and year(OrderDate) = 1996;

-- 8
select * from orders
where ShippedDate > RequiredDate;

-- 9
select * from orders
where year(OrderDate) = 1997 
and month(OrderDate) IN (1, 2, 3, 4)
and ShipCountry = 'Canada';

-- 10
select * from employees
where year(BirthDate) <= 1960
and Region is null;

-- 11
select * from orders
where EmployeeID in (2, 5, 8)
and ShipRegion <> ''
and ShipVia in (1, 3)
order by EmployeeID asc, ShipVia asc;

-- 12
SELECT 
	Products.ProductID,
	Products.ProductName,
	Categories.CategoryName
FROM Products INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;

-- 13
SELECT 
	Products.ProductID,
	Products.ProductName,
	Suppliers.CompanyName
FROM Products INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID;

-- 14
SELECT
	Orders.OrderID,
	Customers.CompanyName,
	Employees.LastName + ' ' + Employees.FirstName AS Name
FROM Employees INNER JOIN Orders 
ON Employees.EmployeeID = Orders.EmployeeID 
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID;


-- 15
SELECT 
	Employees.EmployeeID,
	Territories.TerritoryID,
	Territories.TerritoryDescription
FROM Employees INNER JOIN EmployeeTerritories 
ON Employees.EmployeeID = EmployeeTerritories.EmployeeID 
RIGHT JOIN Territories 
ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
WHERE Employees.EmployeeID IS NULL;

-- 16
SELECT 
	Products.ProductID,
	Products.ProductName
FROM Products INNER JOIN orderdetails
ON Products.ProductID = orderdetails.ProductID
INNER JOIN Orders
ON orderdetails.OrderID = Orders.OrderID
WHERE YEAR(OrderDate) = 1997
AND MONTH(OrderDate) = 5;

-- 17
SELECT
	Orders.OrderID,
    Customers.CompanyName,
    Products.ProductName
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
INNER JOIN orderdetails
ON Orders.OrderID = orderdetails.OrderID
INNER JOIN Products
ON orderdetails.ProductID = Products.ProductID;