
--Query 1 : Total Sales per Category

SELECT Category, SUM(Purchase_Amount) AS Total_Sales
FROM Customer_Purchases
GROUP BY Category;

--Query 2 : Average Purchase per customer

SELECT p.Customer_ID AS 'Customer ID',
       AVG(Purchase_Amount) AS 'Average Purchase'
FROM Customer_Purchases p
GROUP BY p.Customer_ID
ORDER BY 'Average Purchase' DESC;


--Query 3 : Average Purchase per Customer with Review Rating

SELECT p.Customer_ID AS 'Customer ID', 
       AVG(p.Purchase_Amount) AS 'Avg Spend', 
       r.Review_Rating AS 'Review Rating'
FROM Customer_Purchases p
JOIN Customer_Reviews r ON p.Customer_ID = r.Customer_ID
GROUP BY p.Customer_ID, r.Review_Rating;


--Query 4 : Total Sales by Season

SELECT Season AS 'Season', 
       SUM(Purchase_Amount) AS 'Total Sales'
FROM Customer_Purchases
GROUP BY Season
ORDER BY FIELD(Season,'Spring','Summer','Fall','Winter');


--Query 5 : Total Sales by Season and Category

SELECT Season AS 'Season', 
       Category AS 'Category', 
       SUM(Purchase_Amount) AS 'Total Sales'
FROM Customer_Purchases
GROUP BY Season, Category
ORDER BY FIELD(Season,'Spring','Summer','Fall','Winter'), 'Total Sales' DESC;


--Query 6 : Total Purchase Amount by Location

SELECT Location AS 'Location', 
       SUM(Purchase_Amount) AS 'Total Sales'
FROM Customer_Purchases
GROUP BY Location
ORDER BY 'Total Sales' DESC;


--Query 7 : Number of Purchases per Category

SELECT Category AS 'Category', 
       COUNT(*) AS 'Number of Purchases'
FROM Customer_Purchases
GROUP BY Category
ORDER BY 'Number of Purchases' DESC;


--Query 8 : Top 10 Most Purchased Items

SELECT Item_Purchased AS 'Item', 
       COUNT(*) AS 'Purchase Count'
FROM Customer_Purchases
GROUP BY Item_Purchased
ORDER BY 'Purchase Count' DESC
LIMIT 10;


--Query 9 : Average Purchase by Gender

SELECT Gender AS 'Gender', 
       AVG(Purchase_Amount) AS 'Average Purchase'
FROM Customer_Purchases
GROUP BY Gender;


--Query 10: Average Purchase by Age Group

SELECT CASE
           WHEN Age < 20 THEN 'Below 20'
           WHEN Age BETWEEN 20 AND 29 THEN '20-29'
           WHEN Age BETWEEN 30 AND 39 THEN '30-39'
           WHEN Age BETWEEN 40 AND 49 THEN '40-49'
           WHEN Age BETWEEN 50 AND 59 THEN '50-59'
           ELSE '60+'
       END AS `Age Group`,
       AVG(Purchase_Amount) AS `Average Purchase`
FROM Customer_Purchases
GROUP BY CASE
           WHEN Age < 20 THEN 'Below 20'
           WHEN Age BETWEEN 20 AND 29 THEN '20-29'
           WHEN Age BETWEEN 30 AND 39 THEN '30-39'
           WHEN Age BETWEEN 40 AND 49 THEN '40-49'
           WHEN Age BETWEEN 50 AND 59 THEN '50-59'
           ELSE '60+'
       END
ORDER BY FIELD(`Age Group`, 'Below 20','20-29','30-39','40-49','50-59','60+');


--Query 11 : Customer Count by Subscription Status

SELECT Subscription_Status AS 'Subscription Status', 
       COUNT(*) AS 'Number of Customers'
FROM Customer_Reviews
GROUP BY Subscription_Status;


--Query 12 : Average Purchase vs Subscription Status

SELECT r.Subscription_Status AS 'Subscription Status', 
       AVG(p.Purchase_Amount) AS 'Average Purchase'
FROM Customer_Purchases p
JOIN Customer_Reviews r ON p.Customer_ID = r.Customer_ID
GROUP BY r.Subscription_Status;


--Query 13 : Average Review Rating per Category

SELECT p.Category AS 'Category', 
       AVG(r.Review_Rating) AS 'Avg Review Rating'
FROM Customer_Purchases p
JOIN Customer_Reviews r ON p.Customer_ID = r.Customer_ID
GROUP BY p.Category
ORDER BY 'Avg Review Rating' DESC;

--Query 14 : Total Discount Applied by Customer

SELECT Customer_ID AS 'Customer ID', 
       SUM(Discount_Applied) AS 'Total Discount'
FROM Customer_Reviews
GROUP BY Customer_ID
ORDER BY 'Total Discount' DESC;


--Query 15 : Total Purchases by Payment Method

SELECT Payment_Method AS 'Payment Method', 
       SUM(p.Purchase_Amount) AS 'Total Purchase'
FROM Customer_Purchases p
JOIN Customer_Reviews r ON p.Customer_ID = r.Customer_ID
GROUP BY Payment_Method
ORDER BY 'Total Purchase' DESC;


--Query 16 : Average Purchase per Season

SELECT Season AS 'Season', 
       AVG(Purchase_Amount) AS 'Average Purchase'
FROM Customer_Purchases
GROUP BY Season
ORDER BY FIELD(Season,'Spring','Summer','Fall','Winter');


--Query 17 : Top Customers by Total Spending

SELECT Customer_ID AS 'Customer ID', 
       SUM(Purchase_Amount) AS 'Total Spend'
FROM Customer_Purchases
GROUP BY Customer_ID
ORDER BY 'Total Spend' DESC
LIMIT 10;


--Query 18 : Items with Highest Average Spending

SELECT Item_Purchased AS 'Item', 
       AVG(Purchase_Amount) AS 'Avg Spend'
FROM Customer_Purchases
GROUP BY Item_Purchased
ORDER BY 'Avg Spend' DESC
LIMIT 10;


-- Query 19 : Top 5 Purchase Count by Color

SELECT Color AS 'Color', 
       COUNT(*) AS 'Number of Purchases'
FROM Customer_Purchases
GROUP BY Color
ORDER BY COUNT(*) DESC
LIMIT 5;


--Query 20: Average Purchase by Size

SELECT Size AS 'Size', 
       AVG(Purchase_Amount) AS 'Average Purchase'
FROM Customer_Purchases
GROUP BY Size
ORDER BY 'Average Purchase' DESC;


