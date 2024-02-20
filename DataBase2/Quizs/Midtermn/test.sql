--  orderdetails + products names where quantity > 50
SELECT 
    orderdetails.orderid, 
    products.productname
FROM 
    orderdetails
INNER JOIN 
    products ON orderdetails.productid = products.productid
WHERE 
    orderdetails.quantity > 50;

-- companyname to ships to Brazil order by companyname
 SELECT DISTINCT 
    shippers.companyname AS "Shipped By"
FROM 
    shippers
INNER JOIN 
    orders ON shippers.shipperid = orders.shipvia
WHERE 
    orders.shipcountry = 'Brazil'
ORDER BY 
    "Shipped By";

/*
 SELECT DISTINCT 
    companyname AS "Shipped By"
FROM 
    shippers
WHERE 
    shipcountry = 'Brazil'
ORDER BY 
    companyname;
*/

-- custumers from Versailles, Bengaluru, Seoul, Tokyo, Walla Walla, Buenos Aires and companyname like '_a%e' 
 SELECT *
FROM customers
WHERE city IN ('Versailles', 'Bengaluru', 'Seoul', 'Tokyo', 'Walla Walla', 'Buenos Aires')
AND companyname LIKE '_a%e';

-- insert into orderdetails and products
INSERT INTO orderdetails (orderid, productid, unitprice, quantity, discount)
VALUES (1010, 0, 7.00, 10, 0.01);

INSERT INTO products (productid, productname, supplierid, categoryid, quantityperunit, unitprice, unitsinstock, unitsonorder, reorderlevel, discontinued)
VALUES (2024, 'Midterm Test Product', 2, 2, '20 packs', 75.00, 30, 10, -1, 0);

-- clients with contactname that start with 'B'
SELECT 
    customerid, 
    contactname 
FROM 
    customers 
WHERE 
    SUBSTR(contactname, INSTR(contactname, ' ', -1) + 1) LIKE 'B%';


-- productos que tienen el mismo precio unitario (unitprice) y los presenta en orden descendente según el precio
-- SELECT 
--     productname,
--     unitprice
-- FROM 
--     products
-- WHERE 
--     unitprice IN (
--         SELECT 
--             unitprice
--         FROM 
--             products
--         GROUP BY 
--             unitprice
--         HAVING 
--             COUNT(*) > 1
--     )
-- ORDER BY 
--     unitprice DESC;

SELECT 
    p.productname,
    p2.unitprice
FROM products p
INNER JOIN products p2
ON p.unitprice = p2.unitprice
WHERE p.productid != p2.productid
ORDER BY p2.unitprice DESC;

-- company name , first name, last name, orderid
 SELECT
c.companyname,
e.firstname,
e.lastname,
o.orderid
FROM 
orders o
INNER JOIN 
customers c ON o.customerid = c.customerid
INNER JOIN 
employees e on o.employeeid = e.employeeid
ORDER BY 1, 3;

-- companyname, contactname, full address
 SELECT 
    companyname,
    contactname,
    address || ', ' || city || ', ' || region || ', ' || postalcode || ', ' || country as "Full Address"
FROM 
    customers
ORDER BY
    city,
    companyname;

-- orders with unitprice > 10.00, quantity between 30 and 50, discount > 0
SELECT 
    *
FROM 
    orderdetails
WHERE 
    unitprice > 10.00
  AND quantity BETWEEN 30 AND 50
  AND discount > 0
ORDER BY unitprice DESC;
