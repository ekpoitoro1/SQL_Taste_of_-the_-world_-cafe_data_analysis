# **Taste of the World Cafe Menu Performance & Customer Preference Analysis**

This project analyzes restaurant order data for Taste of the World Cafe, with a focus on identifying high-performing & underperforming menu items, and also understanding customer ordering behavior. 
SQL queries were used to uncover performances, patterns, trends, and actionable insights to support business decisions.

### **Objectives**
* Analyze overall menu item performance based on sales volume and revenue

* Identify top and low-performing items to support menu optimization

* Track monthly sales trends to observe seasonal or time-based patterns

* Examine ordering behavior by day of the week and time of day

* Evaluate the performance of newly introduced menu items compared to existing ones

* Understand category-level performance and customer ordering preferences

### **Data Overview**

##### *Tables Used:*

#### menu_items Table:
This table contains 4 Columns and a constraint(Primary Key). The columns include Menu_item_id (primary Key), item_name, category, and price. 

#### order_details Table:
This table contains 5 columns and 2 constraints (Primary and Foreign Key). These columns and foreighn key include order_details_id (primary key), order_id, order_date, order_time, item_id and order_details_item_id respectively.


### **Key Insights and Findings**

* There are 32 unique menu items and 4 unique categories in this dataset.
  
* The average cost of items by category is between 16.75 and 10.07. Italian dishes cost more, while American dishes cost less.
  
* Orders were placed between 1st of Jan 2023 to 31st of March 2023, and about 12234 orders have been made so far.

* The best performing menu items include Hamburger, Edamame, Korean Beef Bowl, while the worst Performing menu items include Cheese Lasagna, Potstickers, Chicken Tacos.

* A line chart for the trend of total sales per month shows that the month of February has the highest (186 items sold) and lowest (76 items sold) compared to other months.

 * Korean Beef Bowl is the highest revenue-generating item with a Total revenue of 10554.60.
   
 * The top 5 highest performing items by revenue are Korean Beef Bow, Spaghetti & Meatballs, Tofu Pad Thai, Cheeseburger, and Hamburger.

* Top-performing items are consistently ordered across all weekdays and generate the highest revenue.

* The best-performing menu items (Hamburger, Edamame, and Korean Beef Bow) are the most frequently ordered.

* The analysis showed that menu item 103 (Hot Dog) has the highest reorder rate compared to the others.

* Peak ordering times are during lunch hours (12 PM – 1 PM).

* Newer items (first ordered within the last 3 months) are performing competitively, though older items still dominate total orders.

* The month of March has the highest order, followed by January and February.

### Recommendations
* Underperforming items are rarely ordered and may need re-evaluation.

* Promote Top Performers Strategically by Highlighting best-selling items like Hamburger, Edamame, and Korean Beef Bowl on the menu and ordering platform as “Customer Favorites” or “Most Loved.”

* Leverage the success of top revenue-generating items like Korean Beef Bowl and Spaghetti & Meatballs through upselling and premium meal bundles.

* Improve Visibility of Underperformers. This can be done by reevaluating the positioning, pricing, or presentation of underperforming items such as Cheese Lasagna, Potstickers, and Chicken Tacos.
  Also, consider testing promotions or rotating them off the menu.

* Since Italian dishes are priced higher and American dishes lower, consider limited-time deals on Italian meals to boost uptake, and bundle American items to increase order volume.

* The restaurant must ensure to Maximize Lunch Hour Sales by focusing on promotional campaigns, lunch combos, and marketing pushes during peak order hours (12 PM – 1 PM) when demand is naturally high.

* The Reordering Behavior of customers should be leveraged. The Hot Dog shows the highest reorder rate, and should be featured in loyalty rewards, “repeat favorite” prompts, or flash deals that target returning customers.

* Boost New Item Exposure by employing the use of in-app banners, “What’s New” sections, or staff recommendations to drive awareness.

* Plan staffing, inventory, and marketing campaigns around March and January, which are the months with the highest order volume, to meet demand and drive more conversions.

* The menu should be balanced based on Performance. With 32 items across 4 categories, regularly assess performance to maintain a balanced menu that prioritizes customer demand and profitability.

* Since top items are consistently ordered across all weekdays, initiate a Weekly engagement by implementing themed daily specials (e.g., “Midweek Must-Haves”) to encourage steady sales throughout the week.

### *Conclusion*
This analysis offers a clear view into what’s working on the Taste of the World Cafe’s menu and when customers are most active. 
With strong performers like the Korean Beef Bowl leading revenue, and reordering trends favoring items like the Hot Dog, there’s an opportunity to optimize the menu and promotions around proven customer preferences. 
Furthermore, by focusing on high-performing dishes, lunch hour trends, and underperforming items, the cafe can enhance customer satisfaction while increasing profitability.


### **SQL Highlights**
*Some queries include:*

* How many menu items are present?

* How many unique menu items are present?

* How many unique categories are present?

* What's the Average cost of items by category?

* Between what period were orders placed?

* How many orders have been made so far?

*Core Queries:*

* What are the best and worst-performing menu items?
* What is the trend of Total sales per month?
* Highest revenue-generating item?
* Top 5 Highest revenue-generating items?
* What are the most ordered items per day of the week?
* What are the Top 3 items ordered most frequently?
* What is the reorder rate of items by customers?
* What are the peak reordering hours?
* What are the peak reordering days?
* What is the trend of the monthly orders?

*All queries are PostgreSQL-compatible.*




  
