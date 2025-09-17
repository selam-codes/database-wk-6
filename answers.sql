CREATE DATABASE sqldb;

USE sqldb;

/*Question 1*/
SELECT
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM
    employees AS e
INNER JOIN
    offices AS o
ON
    e.officeCode = o.officeCode;

/*Question 2*/
SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM
    products AS p
LEFT JOIN
    productlines AS pl
ON
    p.productLine = pl.productLine;

/*Question 3*/
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    c.customerNumber
FROM
    customers AS c
RIGHT JOIN
    orders AS o
ON
    c.customerNumber = o.customerNumber
LIMIT 10;
