# ⭐ Practice Questions and Solutions 1


#### 1. Show all customers.
```sql
SELECT *
FROM customers;
```

#### 2. Show all orders.
```sql
SELECT *
FROM orders;
```

#### 3. Display the names and cities of all customers.
```sql
SELECT customer_name, city
FROM customers;
```

#### 4. Find all orders placed by customer with ID = 1.
```sql
SELECT *
FROM orders
WHERE customer_id = 1;
```

#### 5. List orders where the amount is greater than 100.
```sql
SELECT *
FROM orders
WHERE amount > 100;
```

#### 6. Show the total number of customers.
```sql
SELECT COUNT(customer_id) AS total
FROM customers;
```

#### 7. Show the total number of orders.
```sql
SELECT COUNT(order_id) AS total
FROM orders;
```

#### 8. Find the total amount spent by each customer.
```sql
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name;
```

#### 9. Show customers who live in the city "Chicago".
```sql
SELECT *
FROM customers
WHERE city = 'Chicago';
```

#### 10. List customers along with their orders (customer name + order amount).
```sql
SELECT 
    c.customer_name,
    o.amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id;
```


