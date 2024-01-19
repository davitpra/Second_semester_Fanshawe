/*Enter only the SQL to list the Customer Firstname, Lastname, and Ship Date for Order 451:*/

SELECT 
    c.firstname AS "Customer Firstname",
    c.lastname AS "Customer Lastname",
    o.shipdate AS "Ship Date"
FROM customers c
INNER JOIN orders o
ON c.id = o.customerid
WHERE o.id = 451

/*List all product names aliased as Product (only once per vendor) and the vendor’s name aliased as Vendor, who sells the product, sort by the product name*/

SELECT 
    p.name AS "Product",
    v.name AS "Vendor"
FROM products p
INNER JOIN product_vendors pv
ON p.id = pv.productid
INNER JOIN vendors v
ON pv.vendorid = v.id
GROUP BY v.name, p.name
ORDER BY p.name

/*Enter only the SQL to list the customer’s lastname aliased as Customer, product name aliased as Product, retail price aliased as Price and discount amount aliased as Discount for all items on order 486  that have been discounted (where quoted price is less than retail price):*/

SELECT 
    c.lastname AS "Customer",
    p.name AS "Product",
    p.retailprice AS "Price",
    p.retailprice - od.quotedprice AS "Discount"
FROM customers c
INNER JOIN orders o
ON c.id = o.customerid
INNER JOIN order_details od
ON o.id = od.orderid
INNER JOIN products p
ON od.productid = p.id
WHERE o.id = 486

/*Enter only the SQL to list the product name and vendor id for all products that we have purchased from more than one vendor, sort this one on product name (Hint: you’ll need to use a Self-Join and an additional INNER JOIN to solve, see pdf for reference) and don’t forget to remove any duplicates.*/

SELECT 
    p.name AS "Product Name",
    pv.vendorid AS "Vendor ID"
FROM products p
INNER JOIN product_vendors pv
ON p.id = pv.productid
INNER JOIN product_vendors pv2
ON p.id = pv2.productid
WHERE pv.vendorid != pv2.vendorid
ORDER BY p.name

/* What is the row count of the Customers and Employees cartesian query from the labs tables on Oracle Live? */

SELECT 
    COUNT(*) AS "Row Count"
FROM customers c, employees e
