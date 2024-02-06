DROP TABLE customers CASCADE CONSTRAINTS;
CREATE TABLE customers (
    customerid char(5) NOT NULL,
    companyname varchar2(40) NOT NULL,
    contactname varchar2(30) ,
    contacttitle varchar2(30) ,
    address varchar2(60) ,
    city varchar2(15) ,
    region varchar2(15) ,
    postalcode varchar2(10) ,
    country varchar2(15) ,
    phone varchar2(24) ,
    fax varchar2(24) ,
    email varchar2(50) ,

    CONSTRAINT customers_customerid_pk PRIMARY KEY (customerid),

    CONSTRAINT customers_email_uq UNIQUE (email)
);

DROP TABLE Employees CASCADE CONSTRAINTS;
CREATE TABLE Employees (
    employeeid number(8,0) NOT NULL,
    lastname varchar2(20) NOT NULL,
    firstname varchar2(10) NOT NULL,
    title varchar2(30) ,
    titleofcourtesy varchar2(25) ,
    birthdate date ,
    hiredate date ,
    address varchar2(60) ,
    city varchar2(15) ,
    region varchar2(15) ,
    postalcode varchar2(10) ,
    country varchar2(15) ,
    homephone varchar2(24) ,
    extension varchar2(4) ,
    notes varchar2(600) ,
    reportsto number(8,0) ,
    photopath varchar2(255) ,
    sin char(9) ,

    CONSTRAINT Employees_employeeid_pk PRIMARY KEY (employeeid),
    CONSTRAINT Employees_reportsto_fk FOREIGN KEY (reportsto) REFERENCES Employees(employeeid),

    CONSTRAINT Employees_sin_uq UNIQUE (sin)
);

DROP TABLE Shippers CASCADE CONSTRAINTS;
CREATE TABLE Shippers (
    shipperid number(8,0) NOT NULL,
    companyname varchar2(40) NOT NULL,
    phone varchar2(24) ,

    CONSTRAINT Shippers_shipperid_pk PRIMARY KEY (shipperid)
);

DROP TABLE Suppliers CASCADE CONSTRAINTS;
CREATE TABLE Suppliers (
    supplierid number(8,0) NOT NULL,
    companyname varchar2(40) NOT NULL,
    contactname varchar2(30) ,
    contacttitle varchar2(30) ,
    address varchar2(60) ,
    city varchar2(15) ,
    region varchar2(15) ,
    postalcode varchar2(10) ,
    country varchar2(15) ,
    phone varchar2(24) ,
    fax varchar2(24) ,
    homepage varchar2(200) ,

    CONSTRAINT Suppliers_supplierid_pk PRIMARY KEY (supplierid)
);

DROP TABLE Categories CASCADE CONSTRAINTS;
CREATE TABLE Categories (
    categoryid number(8,0) NOT NULL,
    categoryname varchar2(15) NOT NULL,
    categorycode number(6,0) ,
    description varchar2(300) ,

    CONSTRAINT Categories_categoryid_pk PRIMARY KEY (categoryid),

    CONSTRAINT Categories_categorycode_uq UNIQUE (categorycode)
);

DROP TABLE Orders CASCADE CONSTRAINTS;
CREATE TABLE Orders (
    orderid number(8,0) NOT NULL,
    customerid char(5) ,
    employeeid number(8,0),
    territoryid varchar2(20) ,
    orderdate date ,
    requireddate date ,
    shippeddate date ,
    shipvia number(8,0) ,
    freight number(8,2) ,
    shipname varchar2(40) ,
    shipaddress varchar2(60) ,
    shipcity varchar2(15) ,
    shipregion varchar2(15) ,
    shippostalcode varchar2(10) ,
    shipcountry varchar2(15) ,

    CONSTRAINT Orders_orderid_pk PRIMARY KEY (orderid),
    CONSTRAINT Orders_customerid_fk FOREIGN KEY (customerid) REFERENCES customers(customerid),
    CONSTRAINT Orders_employeeid_fk FOREIGN KEY (employeeid) REFERENCES Employees(employeeid),
    CONSTRAINT Orders_shipvia_fk FOREIGN KEY (shipvia) REFERENCES Shippers(shipperid)
);

DROP TABLE Products CASCADE CONSTRAINTS;
CREATE TABLE Products (
    productid number(8,0) NOT NULL,
    productname varchar2(40) NOT NULL,
    supplierid number(8,0) ,
    categoryid number(8,0) ,
    quantityperunit varchar2(20) ,
    unitprice number(8,2) ,
    unitsinstock number(6,0) ,
    unitsonorder number(6,0) ,
    reorderlevel number(6,0) ,
    discontinued number(1,0) NOT NULL,

    CONSTRAINT Products_productid_pk PRIMARY KEY (productid),
    CONSTRAINT Products_supplierid_fk FOREIGN KEY (supplierid) REFERENCES Suppliers(supplierid),
    CONSTRAINT Products_categoryid_fk FOREIGN KEY (categoryid) REFERENCES Categories(categoryid),

    CONSTRAINT Products_unitprice_ck CHECK (unitprice >= 0),
    CONSTRAINT Products_reorderlevel_ck CHECK (reorderlevel >= 0),
    CONSTRAINT Products_unitsinstock_ck CHECK (unitsinstock >= 0),
    CONSTRAINT Products_unitsonorder_ck CHECK (unitsonorder >= 0)
);

DROP TABLE OrderDetails CASCADE CONSTRAINTS;
CREATE TABLE OrderDetails (
    orderid number(8,0) NOT NULL,
    productid number(8,0) NOT NULL,
    unitprice number(8,2) NOT NULL,
    quantity number(6,0) NOT NULL,
    discount number(2,2) NOT NULL,

    CONSTRAINT OrderDetails_orderid_productid_pk PRIMARY KEY (orderid, productid),
    CONSTRAINT OrderDetails_orderid_fk FOREIGN KEY (orderid) REFERENCES Orders(orderid),
    CONSTRAINT OrderDetails_productid_fk FOREIGN KEY (productid) REFERENCES Products(productid),

    CONSTRAINT OrderDetails_discount_ck CHECK (discount >= 0 AND discount <= 1),
    CONSTRAINT OrderDetails_quantity_ck CHECK (quantity > 0),
    CONSTRAINT OrderDetails_unitprice_ck CHECK (unitprice >= 0)
);
