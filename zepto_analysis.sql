-- =========================
-- ZEPTO DATA ANALYSIS
-- =========================


-- TABLE CREATION
DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);


-- =========================
-- DATA EXPLORATION
-- =========================

-- total records
SELECT COUNT(*) FROM zepto;

-- preview dataset
SELECT * FROM zepto
LIMIT 10;

-- check null values
SELECT *
FROM zepto
WHERE name IS NULL
OR category IS NULL
OR mrp IS NULL;


-- =========================
-- DATA CLEANING
-- =========================

-- remove invalid prices
DELETE FROM zepto
WHERE mrp = 0;

-- convert paisa to rupees
UPDATE zepto
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;


-- =========================
-- BUSINESS ANALYSIS
-- =========================

--Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name , mrp, discountpercent
FROM zepto
ORDER BY discountpercent DESC
LIMIT 10;

--Q2.What are the Products with High MRP but Out of Stock
SELECT DISTINCT name , mrp
FROM zepto
WHERE outofstock = TRUE and mrp >300
ORDER BY mrp DESC;

--Q3.Calculate Estimated Revenue for each category
SELECT category , 
SUM(discountedsellingprice * availablequantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

--04. Find all products where MRP is greater than 2500 and discount is less than 10%.
SELECT DISTINCT name , mrp , discountpercent
FROM zepto
WHERE mrp >500 and discountpercent < 10
ORDER BY mrp DESC, discountpercent DESC

--Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category , 
ROUND(AVG(discountpercent), 2)AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

--Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name , weightingms , discountedsellingprice,
ROUND(discountedsellingprice/weightingms,2) AS price_per_gram
FROM zepto
WHERE weightingms >=100
ORDER BY price_per_gram;

--07.What is the Total Inventory Weight Per Category
SELECT category,
SUM(weightingms * availablequantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight; 






