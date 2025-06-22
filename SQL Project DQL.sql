-- Exploring the data

SELECT * FROM menu_items;

-- Question 1: How many menu items are present?
SELECT COUNT(item_name) AS number_of_items
FROM menu_items;
--Answer: There are 32 menu items

-- Question 2: How many unique menu items are present?
SELECT COUNT(DISTINCT item_name) AS number_of_items
FROM menu_items;

-- Answer: There are 32 unique menu items

-- Question 3: How many unique categories are present?
SELECT COUNT(DISTINCT category) AS number_of_category
FROM menu_items;

-- Answer: There are 4 unique categories

-- Question 4: What's the Average cost of items by category? 
SELECT category, ROUND(AVG(price), 2) AS Average_Price, Min(price), MAX(price)
FROM menu_items
GROUP BY category
ORDER BY Average_Price DESC;

-- Answer: On average, Italian dishes cost more, while American dishes cost less

-- Order Details

SELECT * FROM order_details;

-- Question 5: Between what period were orders placed?

SELECT MIN(order_date), MAX(order_date)
FROM order_details;

-- Answer : The orders were placed between 1st of Jan 2023 to 31st of March 2023

-- Question 6:How many orders have been made so far?

SELECT COUNT(*) FROM order_details;

-- Answer : 12234 orders have been made so far

-- Key Questions
-- For each menu item, count the number of orders

-- Question 7: What are the best and worst-performing menu items?

SELECT menu_items.item_name AS item_name, COUNT(order_details.item_id) AS No_of_items_ordered
FROM menu_items
JOIN order_details 
ON menu_items.menu_item_id = order_details.item_id
GROUP BY item_name
ORDER BY No_of_items_ordered DESC;

-- Answer : (i) The best performing menu_items: Hamburger,Edamame,Korean Beef Bowl
--			(ii) The worst Performing menu_items: Cheese Lasagna, Potstickers, Chicken Tacos.


-- Question 8: What is the trend of Total sales per month?
SELECT 
	EXTRACT(Month FROM order_date) AS MONTH,
	TO_CHAR(order_date, 'Month') AS month_name,
	EXTRACT(YEAR FROM order_date) AS year,
	COUNT(order_details.item_id) AS items_sold,
	ROUND (SUM (menu_items.price), 0) AS total_revenue
FROM order_details 
JOIN menu_items ON order_details.item_id = menu_item_id
GROUP BY order_details.order_date
ORDER BY year, month;

-- Answer 8: The line chart for the trend of total sales per month shows that the month of 
-- February has the highest (186 items sold) and lowest (76 items sold) sales, compared to other months



-- Question 9: Highest revenue-generating item
SELECT menu_items.item_name, COUNT(*) * menu_items.price AS total_revenue
FROM order_details 
JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY menu_items.item_name, menu_items.price
ORDER BY total_revenue DESC
LIMIT 1;

-- Answer: The highest revenue-generating item is Korean Beef Bowl with a Total revenue of 10554.60

-- Question 10: Top 5 Highest revenue-generating items
SELECT menu_items.item_name, COUNT(*) * menu_items.price AS total_revenue
FROM order_details 
JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY menu_items.item_name, menu_items.price
ORDER BY total_revenue DESC
LIMIT 5;

-- Answer: The top 5 highest performing items by revenue are Korean Beef Bow, Spaghetti & Meatballs, Tofu Pad Thai, Cheeseburger and Hamburger.

-- Question 11: What is the most ordered items per day of the week?
SELECT 
	TO_CHAR(order_date, 'Day') AS weekday,
	menu_items.item_name,
	COUNT(*) AS orders
FROM order_details
JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY weekday, menu_items.item_name
ORDER BY orders DESC;

-- Answer: The most ordered items per weekday are Edamame, Hamburger, Tofu Pad Thai, Cheeseburger, Korean Beef Bowl and Cheeseburger, 
-- and these orders were placed on Monday, Monday, Monday, Monday, Sunday and Tuesday respectively

-- Question 12: What are the Top 3 items ordered most frequently?
SELECT menu_items.item_name, COUNT(*) AS order_count
FROM order_details
JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY menu_items.item_name
ORDER BY order_count DESC
LIMIT 3;

-- Answer: The most frequently ordered menu items are Hamburger,Edamame,Korean Beef Bowl

-- Question 13: What is the reorder rate of items by customers?
SELECT order_details.item_id, COUNT(*) AS times_ordered
FROM order_details
GROUP BY item_id
HAVING COUNT (*) > 1
;
-- Answer: The item with the id 103 has the highest reorder rate.

-- Question 14 : What are the peak reordering hours?
SELECT 
	COUNT(*) AS order_count,
	EXTRACT(HOUR FROM order_time) AS Hour 
FROM order_details
GROUP BY Hour
ORDER BY order_count DESC;

-- Answer: The Peak reordering hour is 12 pm

-- Question 15: What are the peak reordering days?
SELECT 
	TRIM(TO_CHAR(order_date, 'Day')) AS Weekday,
	COUNT(*) AS orders
FROM order_details
GROUP BY order_details.order_date
ORDER BY Weekday ASC;

-- Answer: The chart for the peak reordering days showed that the order performance varied across days of the week

-- Question 16: What is the trend of monthly orders?
SELECT 
   TO_CHAR(order_date, 'Month') AS Month_name,
   EXTRACT(MONTH FROM order_date) AS month,
	COUNT(*) AS orders
FROM order_details
GROUP BY month, Month_name
ORDER BY month ASC;

-- Answer: The month of March has the highest order, followed by January and February


-- Link to summary : https://github.com/ekpoitoro1/SQL_Taste_of_-the_-world_-cafe_data_analysis/tree/main#


