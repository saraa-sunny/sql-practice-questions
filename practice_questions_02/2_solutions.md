# ⭐ Practice Questions and Solutions 2

1. List all categories.
```sql
SELECT * 
FROM categories;  
```
2. List all products with their category name.
```sql
SELECT p.product_name, c.category_name, p.price
FROM products p
JOIN categories c 
ON p.category_id = c.category_id;
```
3. Find all orders.
```sql
SELECT * 
FROM product_orders;
```
4. Show product name, quantity, and total price per order (quantity * price).
```sql
SELECT  o.order_id,p.product_name,
        o.quantity,(o.quantity * p.price) AS total_price
FROM product_orders o
JOIN products p
ON p.product_id = o.product_id ;
```
5. Find total quantity sold per product.
```sql
SELECT p.product_name,
	   SUM(o.quantity) AS total_quantity
FROM product_orders o
JOIN products p
ON p.product_id = o.product_id 
GROUP BY p.product_name;
```
6. Find total revenue per product.
```sql
SELECT p.product_name,
	   SUM(o.quantity * p.price) AS total_revenue
FROM product_orders o
JOIN products p
ON p.product_id = o.product_id 
GROUP BY p.product_name;
```
