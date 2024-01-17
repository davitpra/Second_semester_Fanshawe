/* Find all vendor names aliased as Vendor Name, a concatenated address aliased as Address, and includes the street address, city and postal code fields for vendors that have a business that has a street address that contains the string Ave, whose name has the letter a as the 2nd character and has a postal code that ends with the number 6.*/

SELECT 
    name AS "Vendor Name", 
    streetaddress || ', ' || city || ', ' || postalcode AS "Address" 
FROM vendors
WHERE 
    streetaddress LIKE '%Ave%' 
    AND name LIKE '_a%' 
    AND postalcode LIKE '%6';

/*Return all order information for orders whose Id ends in a 2 and customer id that ends in a 2 and employee id that ends in a 2, sort the results by the order’s Id field. */

SELECT * FROM orders 
WHERE 
    id LIKE '%2' 
    AND customerid LIKE '%2' 
    AND employeeid LIKE '%2' 
ORDER BY 
    id;

/* Without using the logical operator OR, list all customers from Toronto, Ottawa, and London whose phone number does not end with a 7. Sort this one by city. */

SELECT * FROM customers 
WHERE 
    city IN ('Toronto', 'Ottawa', 'London') 
    AND phonenumber NOT LIKE '%7' 
ORDER BY 
    city;

/*List all orders shipped in the first week of September 2020 (September 1st – September 7th inclusive), that were sold to customer 1003, customer 1004 or customer 1005 and sort it by customer Id. */

SELECT * FROM orders 
WHERE 
    shipdate BETWEEN '2020-09-01' AND '2020-09-07' 
    AND customerid IN ('1003', '1004', '1005') 
ORDER BY 
    customerid;