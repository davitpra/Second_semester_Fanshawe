/*Enter only the SQL to: Return a concatenated field with alias Customer Name (format lastname, firstname),  streetaddress, city and province for customers that live on a street that ends with the word Ave and whose last name has the letter e as the 2nd character and also ends in the letter s. Sort this one by last name alphabetically.*/
SELECT 
    lastname || ', ' || firstname AS "Customer Name", 
    streetaddress,
    city,
    province
FROM customers
WHERE
    streetaddress LIKE '%Ave' 
    AND lastname LIKE '_e%s'
ORDER BY
    lastname;

/*Enter only the SQL to: List products that end in the word ‘RH’ or ‘LH’ and whose product Id is less than the value of the QtyOnHand field. Sort this list by QtyOnHand lowest to highest */

SELECT * FROM products
WHERE
    id < qtyonhand
    AND (name LIKE '%RH' OR name LIKE '%LH')
ORDER BY
    qtyonhand;

/*Enter only the SQL to: Without using the logical operator OR, list all vendors from Ontario, Alberta and BC who are not in the 416 and 780 area codes. Also, sort this list by city within province*/

SELECT * FROM vendors
WHERE
    province IN ('ON', 'AB', 'BC')
    AND phonenumber NOT LIKE '416%'
    AND phonenumber NOT LIKE '780%'
ORDER BY
    city,
    province;

/* Enter only the SQL to: List all orders created in the last full week of September 2020 (September 20th - September 26th inclusive), that were sold either by employee 604, 606, or 608 and sort it by employee Id*/

SELECT * FROM orders
WHERE
    orderdate BETWEEN '2020-09-20' AND '2020-09-26'
    AND employeeid IN ('604', '606', '608')
ORDER BY
    employeeid;

/* What would the LIKE clause be if you wanted to return all rows where a field called CITY had the letter a in the 3rd byte?*/
    
    WHERE city LIKE '_ _a%'

/*Which of the following WHERE clauses would determine if a column called mobile contained nulls?*/
    
    WHERE mobile IS NULL

/* Which of the following SELECT statements would return these results?*/

    e) either c or d

/*If I have a BETWEEN clause in a SELECT statement that looks like: SELECT … WHERE X BETWEEN 20 and 40, what values for X will return results?*/

    b) 20, 21, 22

/* and
if the first expression is false and the second expression is true, what is result?  */
    
    false

/* and
if the first expression is true and the second expression is false, what is result? */
        
    false

/* or
if the first expression is false and the second expression is true, what is result? */
    
    true

/* or
if the first expression is true and the second expression is false, what is result? */
    
    true