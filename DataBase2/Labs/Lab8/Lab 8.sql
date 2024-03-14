-- Week 10 Lab 8 Excerxises
-- Q1 )Return the company named and the number of orders shipped by each shipper as aliased below and sort it on orders shipped highest to lowest:
SELECT CompanyName AS "Shipper"
	,COUNT(o.OrderID) AS "Orders Shipped"
FROM Shippers s JOIN Orders o
	ON s.ShipperID = o.ShipVia
GROUP BY CompanyName
ORDER BY 2 DESC;

-- Q2)Return the customer Id, company name and the number of orders each customer made as aliased below. Be sure to only list the customer once and sort the list by orders made and limit the list to the top 5 customers.
SELECT DISTINCT TOP 5 
	c.CustomerID "Id"
	,c.CompanyName "Customers"
	,COUNT(*) OVER (PARTITION BY c.CompanyName) AS "Total Orders Customer made"
FROM Customers c JOIN Orders o
	ON c.CustomerID = o.CustomerID
ORDER BY 3 DESC;

-- Q3) Return the shipper Id and the total of all freight costs for each shipper for all orders as aliased below. Sort by the freight costs highest to lowest.
SELECT CompanyName AS "Shipper"
	,FORMAT(SUM(o.Freight), 'C', 'en-us') AS "Shipping Cost"
FROM Shippers s JOIN Orders o
	ON s.ShipperID = o.ShipVia
GROUP BY CompanyName
ORDER BY 2 DESC;

-- Q4)Return the supplier and total number of units on order of products from that supplier as aliased below for all suppliers that have more than 60 units outstanding. Sort this one on outstanding units from highest to lowest.
SELECT s.CompanyName AS "Supplier"
	--,SUM(p.Discontinued)
	,SUM(p.UnitsOnOrder) AS "Units Not Received"
FROM Suppliers s JOIN Products p
	ON s.SupplierID = p.SupplierID
	--JOIN OrderDetails od ON od.ProductID = p.ProductID
GROUP BY s.CompanyName
HAVING SUM(p.UnitsOnOrder) > 60
ORDER BY 2 DESC;








