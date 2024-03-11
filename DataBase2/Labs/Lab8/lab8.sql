--Return the customer id (customers table) aliased as Customer and OrderId (orders table) aliased as Order #, for customers from Spain. If a customer has not made an order, still include the customer id in your list and sort on the OrderId highest to lowest:

SELECT c.customerid AS Customer, o.orderid AS "Order #" FROM customers c
LEFT JOIN orders o
ON c.customerid = o.customerid
WHERE c.country = 'Spain'
ORDER BY o.orderid DESC;

--Return the Company Name truncated to 20 characters aliased as Customer (customers table). If the name is less than 20 characters add trailing underscores as shown below. Also, return the freight (orders table) padded to 10 characters with the “#” character as shown below aliased as Padded Freight for each Order from created on September 20th:

SELECT RPAD(c.companyname, 20, '_') AS Customer, LPAD(o.freight, 10, '#') AS "Padded Freight" FROM customers c
JOIN orders o
ON c.customerid = o.customerid
WHERE EXTRACT(MONTH FROM o.orderdate) = 9 AND EXTRACT(DAY FROM o.orderdate) = 20;

--Using only the INSTR function return all company names and phone numbers from the customer table for customers that are from area code 5:

SELECT companyname, phone FROM customers
WHERE INSTR(phone, '(5)') > 0
ORDER BY phone DESC;

--Return the company name, the 2nd word of the company name (aliased as 2nd word) for all customers that have more than 2 words in their name (partial listing shown)

SELECT CompanyName as "Customers with more than 2 words in the name",
	SUBSTR(CompanyName,INSTR(CompanyName,' ')+1, (INSTR(CompanyName,' ',INSTR(CompanyName,' ')+1))- (INSTR(CompanyName,' ')+1) ) as "2nd word"
FROM Customers
WHERE INSTR(CompanyName,' ', INSTR(CompanyName, ' ')+1) > 0;

--Return the CompanyName (customers table) aliased as Customer, PostalCode with any space replaced with a hyphen (customers table) aliased as Postal Code and  OrderId (orders table) aliased as Order #, for customers from South America (Argentina, Brazil and Venezuela). If a customer has not made an order, still include the name and postal code in your list. Sort on the OrderId highest to lowest.

SELECT c.companyname AS Customer, REPLACE(c.postalcode, ' ', '-') AS "Postal Code", o.orderid AS "Order #" FROM customers c
LEFT JOIN orders o
ON c.customerid = o.customerid
WHERE c.country IN ('Argentina', 'Brazil', 'Venezuela')
ORDER BY o.orderid DESC;

--Return CompanyName as Company (suppliers table) truncated to 20 characters, if the name is less than 20 characters embed a period for each space. Return ProductName (products table) as Product truncated to 15 characters, if the product name is less than 15 characters embed a space. Return product price expanded to 7 characters as Padded Price, if the product price is less than 7 characters embed leading asterisks for each missing character. Sort on price highest to lowest

SELECT RPAD(s.companyname, 20, '.') AS Company,
       RPAD(p.productname, 15, ' ') AS Product,
       LPAD(p.unitprice, 7, '*') AS "Padded Price"
FROM suppliers s
JOIN products p
ON s.supplierid = p.supplierid
ORDER BY p.unitprice DESC;

--Return the company name, and a field called "Area Code" for all customers who have a phone number where there is an area code contained in parenthesis. The area code field is only to contain the area code part of the phone # not the entire phone #.  Sort this one by area code. Hint: you'll need to use both the SUBSTR, and INSTR functions to get this one, and the “Area Code” column should have a data format of (###),

SELECT companyname, SUBSTR(phone, INSTR(phone, '(')+1, INSTR(phone, ')') - INSTR(phone, '(') - 1) AS "Area Code" FROM customers
WHERE INSTR(phone, '(') > 0 
ORDER BY phone;

--Return all of the contact names, and contact titles for all customers whose contact title has more than 2 words and that the word “Sales” is the 2nd word.

SELECT contactname, contacttitle FROM customers
WHERE 
    INSTR(contacttitle, ' ', 1, 2) != 0
AND 
    SUBSTR(contacttitle, INSTR(contacttitle, ' ', 1, 1) + 1, INSTR(contacttitle, ' ', 1, 2) - INSTR(contacttitle, ' ', 1, 1) - 1) = 'Sales';