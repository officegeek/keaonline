USE Northwind;

/*
Opgave 1
Find de ordre der ikke er leveret til tiden, ShippedeDate er større end
RequiredDate. 
Brug tabellen Orders
Resultat: 37 Rows
*/
SELECT 
	OrderID, 
	DATEDIFF(ShippedDate, RequiredDate) AS 'AntalDage' -- DATEDIFF - DAY  YEAR giver dage forskelen mellem de to tabeller husk AS eller år
FROM Orders
WHERE ShippedDate > RequiredDate
ORDER BY AntalDage; -- Sorter på AntalDage


/*
Opgave 2
Find alle Ordre (OrderDate) fra 1997 i månederne januar, februar, marts og
april fra Canada (ShipCountry). 
Brug tabelen ’Order Details’
Resulatat: 8 Rows
*/
SELECT 
	OrderID, 
	ShipCountry, 
    OrderDate
FROM Orders
WHERE MONTH(OrderDate) IN (1, 2, 3, 4) AND 
YEAR(OrderDate)=1997 AND ShipCountry='Canada'; -- Finder Månder Jan, Feb, Mar, Apr i 1997 og i Canada

/*
Opgave 3
Find de 3 produkter vi har flest på lager af – Products.UnitsInStock
Resultat: ProductID; 75, 40, 6
*/
SELECT
	ProductID, 
	SUM(UnitsInStock) AS Units
FROM Products
GROUP BY ProductID
ORDER BY Units DESC
LIMIT 3;

/*
Opgave 4
Find de 3 produkter hvor vi har mest på lager i forhold til værdien af lageret
Resultat: ProductID; 38, 59, 12
*/
SELECT
	ProductID, 
    UnitsInStock*UnitPrice AS StockValue
FROM Products
ORDER BY StockValue DESC
LIMIT 3;

/*
Opgave 5
Find de Ordre hvor EmployeeID er lig med 2, 5 eller 8. ShipRegion ikke er
NULL og ShipVia enten er 1 eller 3. 
Skal sorteres først efter EmployeeID derefter ShipVia
Resultat: 57 Rows
*/
SELECT 
	EmployeeID,
    ShipRegion, 
    ShipVia
FROM Orders
WHERE EmployeeID IN (2, 5, 8) AND ShipRegion IS NOT NULL AND ShipVia IN (1, 3)
ORDER BY EmployeeID, ShipVia;
