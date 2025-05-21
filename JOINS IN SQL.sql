USE sql_store;
#IT HAS ORDERS AND CUSTOMERS LIST AND WE WANT ORDERS WITH CUSTOMERS NAME 
#USING INNER JOIN
SELECT *
FROM orders
JOIN customers
 ON orders.customer_id=customers.customer_id;
#NOW FILTERING WITH COLUMNS REQUIRED
SELECT  order_id,customers.customer_id,first_name,last_name
FROM orders
JOIN customers
 ON orders.customer_id=customers.customer_id;
 
 #we can have name alias
 
 #JOINING ACROSS DATABASES
#We want to join PRODUCTS TABLE from SQL_INVENTORY DATABASE TO ORDER_ITEMS TABLE in SQL_STORE DATABASE
SELECT *
FROM order_items oi
JOIN sql_inventory.products p
ON oi.product_id=p.product_id;

#SELF JOIN (table with itself)
#we want to get manager for each employee
USE sql_hr;
SELECT  emp.employee_id,emp.first_name,m.first_name as manager
FROM employees emp
 JOIN employees m
 ON emp.reports_to=m.employee_id;
 
 #JOINING MULTIPLE TABLES
 #Joining orders,orders_statuses,customers
 USE sql_store;
 SELECT o.order_id,o.order_date,c.first_name,c.last_name,os.name
 FROM orders o
 JOIN customers c
 ON o.customer_id=c.customer_id
 JOIN order_statuses os
 ON o.status= os.order_status_id;
 
 #COMPOUND JOIN CONDITIONS(more than two join conditions )
 SELECT *
 FROM order_items oi
 JOIN order_item_notes oin
 ON oi.order_id=oin.order_id
 AND oi.product_id=oin.product_id;
 
 #OUTER JOIN
 SELECT
 c.customer_id,
 c.first_name,
 o.order_id
 FROM customers c
 JOIN orders o
 ON c.customer_id=o.customer_id
  ORDER BY c.customer_id;
 #this will return only customer that have an order, to get all customers we use outer join .
 #LEFT JOIN (customers)
  SELECT
 c.customer_id,
 c.first_name,
 o.order_id
 FROM customers c
  LEFT JOIN orders o
 ON c.customer_id=o.customer_id
 ORDER BY c.customer_id;
 #so all the record from left(customer table are returned whether the statement is true or not )
 # FOR RIGHT JOIN SAME 
  
  #OUTER JOIN FROM DIFFERENT TABLES
  SELECT
 c.customer_id,
 c.first_name,
 o.order_id,
 sh.name as shipper
 FROM customers c
  LEFT JOIN orders o
 ON c.customer_id=o.customer_id
 LEFT JOIN shippers sh
 ON o.shipper_id=sh.shipper_id
 ORDER BY c.customer_id;
 
 #SELF OUTER JOINS
 SELECT
 e.employee-id,
 e.first_name,
 m.first_name as manager
 FROM employees e
 LEFT JOIN employees m
 ON e.reports_to=m.employee_id;
 
 #NATURAL JOIN(itself join acco to common columns)
 SELECT 
 o.order_id,
 c.first_name
 FROM orders o
 NATURAL JOIN customers c ;
 
 #CROSS JOIN (join every record from one table to every other record in another table
 SELECT 
 c.first_name AS customer,
 p.name as product
  FROM customers c
 CROSS JOIN  products p
 ORDER BY c.first_name;
 
 #UNIONS(combinin rows )
 #(we want order after 2019 as active and before it as archived , so first selecting both differntly and then joining )
 SELECT 
 order_id,
 order_date,
 "ACTIVE" AS Status
 FROM orders
 WHERE order_date >= "2019-01-01";
 
 #for archiving
 SELECT 
 order_id,
 order_date,
 "ARCHIVED" AS Status
 FROM orders
 WHERE order_date < "2019-01-01";
 
 #JOINING BOTH TYPES OF ROW USING UNION IN BETWEEN BOTH SELECT STATEMENTS 
 
 
 