-- Q1: Gets employee details along with their office information
SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
    INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;

-- Q2: Gets products along with their product line details
SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM products AS p
    LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;

-- Q3: Gets the first 10 orders with their customer details
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
    RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
