CREATE TABLE Categories (
    categoryid number(8,0) NOT NULL,
    categoryname varchar2(15) NOT NULL,
    categorycode number(6,0) ,
    description varchar2(300) ,

    CONSTRAINT Categories_categoryid_pk PRIMARY KEY (categoryid)
);

CREATE TABLE Custumers (
    custumerid char(5) NOT NULL,
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

    CONSTRAINT Custumers_custumerid_pk PRIMARY KEY (custumerid)
);

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
    sin chat(9) ,

    CONSTRAINT Employees_employeeid_pk PRIMARY KEY (employeeid)
);

CREATE TABLE OrderDetails (
    orderid number(8,0) NOT NULL,
    productid number(8,0) NOT NULL,
    unitprice number(8,2) NOT NULL,
    quantity number(6,0) NOT NULL,
    discount number(2,2) NOT NULL,

    CONSTRAINT OrderDetails_orderid_productid_pk PRIMARY KEY (orderid, productid)
);

CREATE TABLE Orders (
    orderid number(8,0) NOT NULL,
    custumerid char(5) ,
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

    CONSTRAINT Orders_orderid_pk PRIMARY KEY (orderid)
);

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

    CONSTRAINT Products_productid_pk PRIMARY KEY (productid)
);

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

CREATE TABLE Shippers (
    shipperid number(8,0) NOT NULL,
    companyname varchar2(40) NOT NULL,
    phone varchar2(24) ,

    CONSTRAINT Shippers_shipperid_pk PRIMARY KEY (shipperid)
);

