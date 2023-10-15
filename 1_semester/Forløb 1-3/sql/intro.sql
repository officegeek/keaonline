-- SELECT
SELECT * FROM orders;

-- SELECT udvalgte
SELECT
	OrderID,
    CustomerID,
    OrderDate
FROM orders;

-- SELECT uniq
SELECT DISTINCT ShipCountry
FROM orders;

-- WHERE
SELECT * FROM orders
WHERE EmployeeID = 5;

-- ORDER BY
SELECT * FROM orders
WHERE EmployeeID = 5
ORDER BY OrderDate ASC;

SELECT * FROM orders
WHERE EmployeeID = 5
ORDER BY OrderDate DESC;

-- Beregning
SELECT
	OrderID,
    ProductID,
    UnitPrice,
    Quantity,
    UnitPrice * Quantity AS RowTotal
FROM orderdetails;

-- GROUP BY
SELECT
	OrderID,
    SUM(UnitPrice * Quantity) AS RowTotal
FROM orderdetails
GROUP BY OrderID
ORDER BY OrderID;