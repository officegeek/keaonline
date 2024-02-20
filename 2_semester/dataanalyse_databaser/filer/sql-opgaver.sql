/*
	Løsning opgave DTU 06-10-2022
    Tue Hellstern
*/

-- 1
SELECT
	CustomerId,
    CompanyName,
    ContactName,
    Country
FROM Customers;

-- 2
select distinct ShipCountry from orders;

-- 3
select * from products
order by UnitPrice desc;

-- 4
select * from customers
where Country in ('UK', 'Spain');

-- 5
select * from products
where UnitsInStock > 100 and UnitPrice >= 25;

-- 6
select * from products
where UnitPrice >= 25;

-- 7
select * from orders
where month(OrderDate) = 10 and year(OrderDate) = 1996;

-- 8
select * from orders
where ShipRegion is null and ShipCountry = 'Germany' and Freight >= 100 and EmployeeID = 1 and year(OrderDate) = 1996;

-- 9
select * from orders
where ShippedDate > RequiredDate;

-- 10
select * from orders
where EmployeeID in (2, 5, 8)
and ShipRegion <> ''
and ShipVia in (1, 3)
order by EmployeeID asc, ShipVia asc;