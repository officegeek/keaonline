create view CategorySale
as
select 
	CategoryName,
    sum(orderdetails.UnitPrice * orderdetails.Quantity) as Salg
from categories join products
on categories.CategoryID = products.CategoryID
join orderdetails
on orderdetails.ProductID = orderdetails.ProductID
group by CategoryName;


create view Top5Products
as
select 
	ProductName,
    sum(orderdetails.UnitPrice * orderdetails.Quantity) as Salg
from products join orderdetails
on products.ProductID = orderdetails.ProductID
group by ProductName
order by Salg DESC LIMIT 5;



create view Top5Customers
as
select 
	CompanyName,
    sum(orderdetails.UnitPrice * orderdetails.Quantity) as Salg
from customers join orders
on customers.CustomerID = orders.CustomerID
join orderdetails
on orders.OrderID = orderdetails.OrderID
group by CompanyName
order by Salg DESC LIMIT 5;