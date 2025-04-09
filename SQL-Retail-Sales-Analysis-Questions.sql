-- SQL Retail Sales Analysis 

-- Create DATABASE
CREATE DATABASE IF NOT EXISTS sql_retail_sales_analysis;
USE sql_retail_sales_analysis;

-- Drop table if it exists
DROP TABLE IF EXISTS retail_sales;

-- Create TABLE
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

-- Preview top 10 rows
SELECT * FROM retail_sales
LIMIT 10;

-- Count all sales
SELECT COUNT(*) AS total_sales FROM retail_sales;

-- Data Cleaning

-- Check for NULLs in important columns
SELECT * FROM retail_sales
WHERE transaction_id IS NULL;

SELECT * FROM retail_sales
WHERE sale_date IS NULL;

SELECT * FROM retail_sales
WHERE sale_time IS NULL;

SELECT * FROM retail_sales
WHERE 
    transaction_id IS NULL OR
    sale_date IS NULL OR 
    sale_time IS NULL OR
    gender IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

-- Delete rows with NULLs in key fields
DELETE FROM retail_sales
WHERE 
    transaction_id IS NULL OR
    sale_date IS NULL OR 
    sale_time IS NULL OR
    gender IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

-- Data Exploration

-- Total number of sales
SELECT COUNT(*) AS total_sales FROM retail_sales;

-- Total number of unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM retail_sales;

-- Distinct product categories
SELECT DISTINCT category FROM retail_sales;


-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
