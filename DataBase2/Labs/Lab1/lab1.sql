/* Return all employee names (both first and last) aliased as Representative, city + province + aliased as Address for all employees. Sort by the last name within the city and the city within the province, the start of the output should look like this:*/

SELECT CONCAT(e.FirstName, ' ', e.LastName) AS Representative, CONCAT(c.City, ', ', c.Province) AS Address ORDER BY e.LastName, c.City, c.Province FROM Employees e JOIN Customers c ON e.EmployeeID = c.SupportRepID;

/*Return the order id aliased as Order #, quoted price aliased as Price, quantity ordered aliased as Qty, quantity ordered x quoted price aliased as Total for all details in the Order_Details table. Sort on the order # within total (highest to lowest) and use the ordinal position not column name to do the sorting (only the start of the output is shown below):*/

SELECT ORDERID AS "Order #", QUOTEDPRICE AS Price, QTYORDERED AS Qty, QTYORDERED * QUOTEDPRICE AS Total FROM ORDER_DETAILS ORDER BY 1, 4 DESC;

/*Create a single column list labelled: Provinces We Source Goods From using the vendors table and sort the list alphabetically:*/

SELECT DISTINCT PROVINCE AS "Provinces We Source Goods From" FROM VENDORS ORDER BY 1;

/*Return a list of order id’s aliased as Order # customer id’s aliased as Customer #, employee id’s aliased as Employee # from the orders table. Sort the list by order id (largest to smallest) within employee within customer, start of the output should like this:*/

SELECT ID AS "Order #", CUSTOMERID AS "Customer #", EMPLOYEEID AS "Employee #" FROM ORDERS ORDER BY 1 DESC, 3, 2;

