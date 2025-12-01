CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE product_orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books');

INSERT INTO products (product_id, product_name, category_id, price) VALUES
(101, 'Laptop', 1, 1200.00),
(102, 'Smartphone', 1, 800.00),
(103, 'T-Shirt', 2, 25.00),
(104, 'Jeans', 2, 50.00),
(105, 'Novel', 3, 15.00);

INSERT INTO product_orders (order_id, product_id, quantity, order_date) VALUES
(1001, 101, 1, '2023-01-10'),
(1002, 102, 2, '2023-01-11'),
(1003, 103, 3, '2023-01-12'),
(1004, 104, 1, '2023-01-13'),
(1005, 105, 5, '2023-01-14'),
(1006, 103, 2, '2023-01-15');

