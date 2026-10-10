CREATE DATABASE nexuscloud_support;

USE nexuscloud_support;
CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    account_status VARCHAR(20)
);

INSERT INTO customers (customer_id, name, email, account_status)
VALUES
(1001, 'Amelia Carter', 'amelia.carter@example.com', 'Active'),
(1002, 'Daniel Brooks', 'daniel.brooks@example.com', 'Active'),
(1003, 'Priya Shah', 'priya.shah@example.com', 'Suspended'),
(1004, 'Marcus Reed', 'marcus.reed@example.com', 'Active'),
(1005, 'Sophie Turner', 'sophie.turner@example.com', 'Inactive'),
(1006, 'Ethan Walker', 'ethan.walker@example.com', 'Active');

SELECT * 
FROM customers
WHERE customer_id = 1005;

CREATE TABLE subscriptions (
	subscription_id INT PRIMARY KEY,
    customer_id INT,
    plan VARCHAR(50),
    subscription_status VARCHAR(20),
    renewal_date DATE
);

INSERT INTO subscriptions (subscription_id, customer_id, plan, subscription_status, renewal_date)
VALUES 
(501, 1001, 'Pro', 'Active', '2026-11-15'),
(502, 1002, 'Basic', 'Active', '2026-12-01'),
(503, 1003, 'Pro', 'Active', '2026-11-20'),
(504, 1004, 'Business', 'Active', '2026-12-10'),
(505, 1005, 'Pro', 'Expired', '2026-09-28'),
(506, 1006, 'Basic', 'Active', '2026-11-05');

SELECT *
FROM subscriptions
WHERE customer_id = 1005;

SELECT *
FROM customers
JOIN subscriptions 
ON customers.customer_id = subscriptions.customer_id
WHERE customers.customer_id = 1005;

SELECT
    customers.customer_id,
    customers.name,
    customers.account_status,
    subscriptions.plan,
    subscriptions.subscription_status,
    subscriptions.renewal_date
FROM customers
JOIN subscriptions
ON customers.customer_id = subscriptions.customer_id
WHERE customers.customer_id = 1005;

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	product VARCHAR(100),
	amount DECIMAL(10,2),
	order_status VARCHAR(30),
	order_date DATE
);

INSERT INTO orders
(order_id, customer_id, product, amount, order_status, order_date)
VALUES
(7001, 1001, 'NexusCloud Storage Add-on', 19.99, 'Completed', '2026-10-01'),
(7002, 1002, 'NexusCloud Analytics', 39.99, 'Completed', '2026-10-03'),
(7003, 1006, 'NexusCloud Backup', 14.99, 'Pending', '2026-10-05'),
(7004, 1001, 'NexusCloud Analytics', 39.99, 'Completed', '2026-10-06'),
(7005, 1005, 'NexusCloud Storage Add-on', 19.99, 'Cancelled', '2026-10-07');

SELECT *
FROM orders
WHERE customer_id = 1004;

SELECT
    orders.order_id,
    orders.customer_id,
    customers.name,
    orders.product,
    orders.amount,
    orders.order_status,
    orders.order_date
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id;

SELECT
    orders.order_id,
    orders.customer_id,
    orders.product,
    orders.order_date
FROM orders
WHERE orders.product = 'NexusCloud Analytics'
AND orders.order_date = '2026-10-08';

UPDATE subscriptions
SET plan = 'Basic'
WHERE subscription_id = 502;

SELECT *
FROM subscriptions
WHERE customer_id = 1002;

SELECT *
FROM orders
WHERE customer_id = 1002; 

SELECT
    customers.customer_id,
    customers.name,
    customers.account_status,
    subscriptions.plan,
    subscriptions.subscription_status,
    subscriptions.renewal_date
FROM customers
JOIN subscriptions
ON customers.customer_id = subscriptions.customer_id
WHERE customers.customer_id = 1002;

SELECT
    customers.customer_id,
    customers.name,
    customers.account_status,
    subscriptions.plan,
    subscriptions.subscription_status,
    subscriptions.renewal_date
FROM customers
JOIN subscriptions
ON customers.customer_id = subscriptions.customer_id
WHERE customers.customer_id = 1006;

SELECT
    customers.customer_id,
    customers.name,
    orders.order_id,
    orders.product,
    orders.amount,
    orders.order_status,
    orders.order_date
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.customer_id = 1006;