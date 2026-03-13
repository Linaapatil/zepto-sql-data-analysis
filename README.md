# Zepto Product Data Analysis using SQL

## Project Overview

This project analyzes product data from Zepto using PostgreSQL. The goal is to explore product pricing, discounts, and stock availability to identify valuable products and category-level insights.

The analysis includes data exploration, cleaning, and SQL queries to extract meaningful insights from the dataset.

## Dataset Information

The dataset contains product-level information including:

* Product Name
* Category
* Maximum Retail Price (MRP)
* Discount Percentage
* Discounted Selling Price
* Product Weight
* Available Quantity
* Stock Status

## Tools Used

* PostgreSQL
* SQL
* pgAdmin

## Data Analysis Steps

### 1. Data Exploration

Initial exploration was done to understand the dataset structure and check for:

* Total number of records
* Product categories
* Stock availability
* Duplicate product names

### 2. Data Cleaning

Data cleaning included:

* Removing products with invalid prices
* Converting price values from paisa to rupees
* Checking for null values

### 3. Key Business Questions Answered

The following analysis was performed using SQL:

* Top 10 best value products based on discount percentage
* Products with high MRP but currently out of stock
* Estimated revenue by product category
* Products with high price but low discount
* Categories offering the highest average discount
* Products offering the best price per gram

## Key Insights

The analysis helps identify:

* Categories offering the highest discounts
* Products with strong pricing value
* Potential revenue opportunities
* Stock availability trends


