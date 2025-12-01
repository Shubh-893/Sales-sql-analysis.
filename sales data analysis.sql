SELECT * FROM book1sk;
use shubham_sk;

SELECT COUNT(*) FROM book1sk;

SELECT COUNT(*) AS total_sells FROM book1sk;
-- how many customers we have
SELECT count(distinct customer_id) AS total_sells FROM book1sk;
select distinct customer_id from book1sk;
-- how many unique categories we have
SELECT count(distinct category) AS total_category FROM book1sk;
select distinct category from book1sk;

-- Data analyst key Problems and Answers;
-- Q.1 Write a SQL query to retrieve all columns for sales made on 2022-11-05
select * from book1sk
where
sale_date = "05-11-2022";

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 
SELECT count(transactions_id) 
FROM book1sk
WHERE category = 'Clothing'
  AND quantiy >= 4;
  
ALTER TABLE book1sk
CHANGE quantiy quantity INT;


-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
SELECT 
    category,
    SUM(total_sale) AS total_sale,
    COUNT(*) AS total_order
FROM
    book1sk
GROUP BY category;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.(solution 2nd is correct solution)
SELECT round(AVG(age),2) AS avg_age
FROM book1sk
WHERE category = 'Beauty';

SELECT 
    round((SUM(age) / COUNT(*)),2) AS avg_age
FROM (
    SELECT DISTINCT customer_id, age
    FROM book1sk
    WHERE category = 'Beauty'
) AS unique_customers;

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
SELECT 
    total_sale, transactions_id
FROM
    book1sk
WHERE
    total_sale > 1000;

-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year.
SELECT 
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    AVG(total_sale) AS avg_sale
FROM book1sk
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;
-- 2nd part
SELECT year, month, avg_sale
FROM (
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS rnk
    FROM book1sk
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) AS ranked
WHERE rnk = 1
ORDER BY year;

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales.
select customer_id,sum(total_sale) from book1sk
group by 1 
order by 2 desc limit 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
SELECT 
    COUNT(DISTINCT customer_id), category
FROM
    book1sk
GROUP BY 2
ORDER BY 1 DESC;
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17).

SELECT 
    CASE 
        WHEN HOUR(sale_time) < 12 THEN 'Morning'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        when hour(sale_time) between 17 and 20 then 'evening'
        else 'night'
    END AS shift,
    COUNT(quantity) AS total_orders
FROM book1sk
GROUP BY shift
ORDER BY total_orders DESC;











