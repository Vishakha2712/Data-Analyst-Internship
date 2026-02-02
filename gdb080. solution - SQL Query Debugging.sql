#Quality Check 1.What is the count of distinct customers located in the city of 'Surat'?
SELECT 
    COUNT(DISTINCT customer_id) AS distinct_customers
FROM dim_customers
WHERE city = 'surat';

#Quality Check 2: What is the highest quantity available for the product 'AM Tea 100'?
SELECT 
    MAX(f.order_qty) AS highest_quantity
FROM fact_order_lines f
JOIN dim_products p
    ON f.product_id = p.product_id
WHERE p.product_name = 'AM Tea 100';

#Quality Check 3: In which *month* were the *unfulfilled orders* the *highest* in number?
SELECT MONTHNAME(order_placement_date) AS month_name, SUM(order_qty-delivery_qty) AS unfullfilled_orders
FROM fact_order_lines
GROUP BY month_name
ORDER BY unfullfilled_orders DESC;

#Quality Check 4: What is the percentage of total order quantity accounted for by the “Food”* category? (2 decimals)
SELECT 
    ROUND(
        100 * 
        SUM(CASE WHEN p.category = 'food' THEN f.order_qty ELSE 0 END)
        / SUM(f.order_qty),
        2
    ) AS food_category_percentage
FROM fact_order_lines f
JOIN dim_products p
    ON f.product_id = p.product_id;
    
#Quality Check 5: What is the 'count of customers' falling under the “Above 90” category based on their ontime_target_pct?
SELECT 
    COUNT(DISTINCT customer_id) AS above_90_customers
FROM dim_targets_orders
WHERE ontime_target_pct > 90;

#Quality Check 6: What is the 'count of distinct products' available in the “Dairy” category?
SELECT 
    COUNT(DISTINCT product_id) AS dairy_product_count
FROM dim_products
WHERE category = 'Dairy';

#Quality Check 7: What is the *total order quantity (in millions)* for the *top 3 products* in the *Dairy* category?
WITH cte AS(SELECT p.product_name AS p$, ROUND(SUM(f.order_qty) /1000000, 2) AS order_qty_mln
FROM dim_products p
JOIN fact_order_lines f
ON p.product_id=f.product_id
WHERE p.category LIKE "Dairy"
GROUP BY p.product_name
ORDER BY order_qty_mln DESC
LIMIT 3)
SELECT SUM(order_qty_mln) AS total
FROM cte;

#Quality Check 8: What is the *OTIF percentage* for the customer “Vijay Stores”? 
SELECT c.customer_name, ROUND((SUM(f.otif) / COUNT(f.order_id) * 100),2) AS OTIF_percentage
FROM fact_orders_aggregate f
JOIN dim_customers c 
ON c.customer_id = f.customer_id
WHERE c.customer_name = "Vijay Stores"
GROUP BY c.customer_name; 

#Quality Check 9: 9.  What is the count of products with an IF percentage > 67%?
WITH cte AS(
SELECT d.product_name, SUM(f.In_Full) AS in_full$, COUNT(f.order_id) AS total_cnt
FROM fact_order_lines f
JOIN dim_products d
ON f.product_id=d.product_id
GROUP BY d.product_name), cte1 AS(
SELECT *, ROUND(in_full$/total_cnt *100, 2) AS IF_percentage
FROM cte
HAVING IF_percentage>67
ORDER BY IF_percentage DESC)
SELECT COUNT(*) AS cnt
FROM cte1