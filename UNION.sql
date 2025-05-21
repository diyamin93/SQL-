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
 
 SELECT 
 order_id,
 order_date,
 "ACTIVE" AS Status
 FROM orders
 WHERE order_date >= "2019-01-01"
 UNION
 SELECT 
 order_id,
 order_date,
 "ARCHIVED" AS Status
 FROM orders
 WHERE order_date < "2019-01-01";
 
 
 
 
 
 
 
 