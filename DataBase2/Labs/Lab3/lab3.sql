/* List the employee last name aliased as Order 226 Shipped By, the ship date aliased as Order 226 Shipped On for Order 226:*/

SELECT 
    lastname AS "Order 226 Shipped By",
    shipdate AS "Order 226 Shipped On"
FROM customers c
INNER JOIN orders o
ON c.id = o.customerid
WHERE o.id = 226

/* List all product names (see alias below) for all products coming from the vendor CCM, sort by the product name. */

SELECT 
    p.name AS "CCM Products"
FROM products p
INNER JOIN product_vendors pv
ON p.id = pv.productid
INNER JOIN vendors v
ON pv.vendorid = v.id
WHERE v.name = 'CCM'
ORDER BY p.name

/* List the product name, retail price, quoted price, qty ordered and extended price (quoted price x qty ordered) for all items on order 226 (see aliases below): */

SELECT 
    p.name AS "Product Name",
    p.retailprice AS "Retail Price",
    o.quotedprice AS "Quoted Price",
    o.qtyordered AS "Qty Ordered",
    o.quotedprice * o.qtyordered AS "Extended Price"
FROM products p
INNER JOIN order_details o
ON p.id = o.productid
WHERE o.orderid = 226

/* List the first name and last name (see aliases below) for all employees that have the same last name: */

SELECT 
    e1.firstname AS "First Name",
    e1.lastname AS "Last Name"
FROM employees e1
INNER JOIN employees e2
ON e1.lastname = e2.lastname
WHERE e1.id != e2.id

