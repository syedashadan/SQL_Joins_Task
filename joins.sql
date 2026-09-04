-- sqlite
-- TASK 5: SQL JOINS
-- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN

-- Create Customers table
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product TEXT,
    amount INTEGER
);

-- Insert data into Customers
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Ali', 'Hyderabad'),
(2, 'Sara', 'Mumbai'),
(3, 'Ahmed', 'Delhi'),
(4, 'Zoya', 'Chennai');

-- Insert data into Orders
INSERT INTO Orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 50000),
(102, 2, 'Phone', 25000),
(103, 1, 'Mouse', 1000),
(104, 5, 'Keyboard', 2000);


-- 1. INNER JOIN
SELECT Customers.customer_id, Customers.name, Customers.city,
       Orders.order_id, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- 2. LEFT JOIN
SELECT Customers.customer_id, Customers.name, Customers.city,
       Orders.order_id, Orders.product, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- 3. RIGHT JOIN
SELECT Customers.customer_id, Customers.name, Customers.city,
       Orders.order_id, Orders.product, Orders.amount
FROM Orders
RIGHT JOIN Customers
ON Orders.customer_id = Customers.customer_id;


-- 4. FULL OUTER JOIN
SELECT Customers.customer_id, Customers.name, Customers.city,
       Orders.order_id, Orders.product, Orders.amount
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;