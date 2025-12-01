CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Chicago'),
(3, 'Charlie', 'Los Angeles');

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2023-01-10', 120.50),
(102, 1, '2023-01-12', 89.99),
(103, 2, '2023-01-15', 45.00),
(104, 3, '2023-01-20', 150.00),
(105, 2, '2023-01-22', 60.00);
