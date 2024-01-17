/*Enter only the SQL to return all vendor names aliased as Company Name, streetaddress + city + province + postalcode aliased as Full Address for all vendors. Sort by the city within province with the city name in ascending order and the province code in descending order.*/

SELECT NAME AS "Company Name", STREETADDRESS || ', ' || CITY || ', '|| PROVINCE || ', ' || POSTALCODE AS "Full Address" FROM VENDORS ORDER BY PROVINCE DESC, CITY ASC;
SELECT name AS "Company Name", streetaddress || ', ' || city || ', '|| province || ', ' || postalcode AS "Full Address" FROM vendors ORDER BY province DESC, city ASC;

/* Enter only the SQL to return the product name, category id, retail price, tax (13% of price), and full price (retail price + tax) aliased as Total Price for all products. Sort on price highest to lowest within category and use ordinals not column names to do the sorting. */

SELECT NAME, CATEGORYID, RETAILPRICE, RETAILPRICE * 0.13 AS "Tax", RETAILPRICE * 1.13 AS "Total Price" FROM PRODUCTS ORDER BY 4 DESC, 2;

/*Enter only the SQL to create a single column list that represents which provinces are customers are coming from. Label the column: Provincial Codes for Customers, and sort the list alphabetically*/

SELECT DISTINCT PROVINCE AS "Provincial Codes for Customers" FROM CUSTOMERS ORDER BY 1;

/*Enter only the SQL to return a list of customer names (lastname comes first followed by the firstname) aliased as Our Customers, cities and provinces. Sort the list concatenated name within city and city within province*/

SELECT LASTNAME || ', ' || FIRSTNAME AS "Our Customers", CITY || ', ' || PROVINCE AS "City and Province" FROM CUSTOMERS ORDER BY "Our Customers" ASC, "City and Province" ASC;

/*Using the customers table, what customer would be listed first if you added an ORDER BY 6 clause:*/

1011

/* Again using the customers table what column is considered the primary sort column if you added a ORDER BY 3,4 clause */

lastname

/* Still with the customers table, what Id would be listed first if you added a ORDER BY 6 DESC clause: */

1012

/*Adding a ORDER BY province, city clause will ensure the city Vancouver is listed before Calgary */

false

/*If I wanted a column heading in the results to be "Contact Name" for a Name column, I could add an alias with this syntax:*/

AS "Contact Name"

/* What would the results table contain if I wanted to calculate the “total price” for a product in the products table with the name of Baseball Bat and I wanted to include a 13% sales tax? */

SELECT RETAILPRICE * 1.13 AS "Total Price" FROM PRODUCTS WHERE NAME = 'Baseball Bat'; --> 42.94

/* What syntax would you use to produce concatenated output from the products table that looked like this:                     
 
Batting Glove - 15.99
Baseball Bat - 38
Composite Stick LH - 75.99
Calgary Flames Hoodie - 54.95 */

 NAME || ' - ' || RETAILPRICE

/*Which of the following would I include in my SELECT statement, if I wanted a column to contain a constant like www.myorg.com for each row of output */

SELECT ... ,'www.myorg.com' FROM ...

