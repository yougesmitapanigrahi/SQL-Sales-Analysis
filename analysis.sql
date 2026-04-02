-- Total Revenue
SELECT SUM(quantity * price) AS total_revenue FROM sales;

-- Category-wise Revenue
SELECT category, SUM(quantity * price) AS revenue
FROM sales
GROUP BY category;

-- Top Selling Product
SELECT product, SUM(quantity) AS total_sold
FROM sales
GROUP BY product
ORDER BY total_sold DESC;

-- Monthly Revenue
SELECT substr(order_date, 1, 7) AS month,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY month;