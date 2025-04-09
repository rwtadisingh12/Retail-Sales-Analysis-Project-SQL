-- Create Database
CREATE DATABASE IF NOT EXISTS sql_retail_sales_analysis;
USE sql_retail_sales_analysis;

-- Create Table
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales (
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(15),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);

-- View first 10 records
SELECT * FROM retail_sales
LIMIT 10;

-- Count total records
SELECT COUNT(*) FROM retail_sales;

-- Data Cleaning
-- Checking for NULLs
SELECT * FROM retail_sales WHERE transaction_id IS NULL;
SELECT * FROM retail_sales WHERE sale_date IS NULL;
SELECT * FROM retail_sales WHERE sale_time IS NULL;

-- Check all essential columns for NULLs
SELECT * FROM retail_sales
WHERE transaction_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR gender IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

-- Delete rows with NULLs in important columns
DELETE FROM retail_sales
WHERE transaction_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR gender IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

-- ✅ Data Exploration

-- Total sales records
SELECT COUNT(*) AS total_sales FROM retail_sales;

-- Unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM retail_sales;

-- All product categories
SELECT DISTINCT category FROM retail_sales;

-- ✅ Data Analysis & Business Questions

-- Q1. Sales on 2022-11-05
SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05';

-- Q2. Clothing category, quantity >= 4, November 2022
SELECT * FROM retail_sales
WHERE category = 'Clothing'
  AND quantity >= 4
  AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';

-- Q3. Total sales by category
SELECT 
    category,
    SUM(total_sale) AS net_sale,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;

-- Q4. Average age of Beauty customers
SELECT 
    ROUND(AVG(age), 2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';

-- Q5. Transactions with total_sale > 1000
SELECT * FROM retail_sales
WHERE total_sale > 1000;

-- Q6. Number of transactions by gender and category
SELECT 
    category,
    gender,
    COUNT(*) AS total_trans
FROM retail_sales
GROUP BY category, gender
ORDER BY category;

-- Q7. Best-selling month each year (by avg sale)
SELECT 
    year,
    month,
    avg_sale
FROM (
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS rnk
    FROM retail_sales
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) t
WHERE rnk = 1;

-- Q8. Top 5 customers by total sales
SELECT 
    customer_id,
    SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

-- Q9. Unique customers per category
SELECT 
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category;

-- Q10. Order count by shift (Morning <12, Afternoon 12-17, Evening >17)
SELECT 
    CASE
        WHEN HOUR(sale_time) < 12 THEN 'Morning'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY shift;
