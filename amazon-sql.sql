USE amazon_sales;

SELECT * FROM amazon;

# Calculate total sales, total profit, and total quantity
SELECT SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit, SUM(Quantity) AS Total_Quantity FROM amazon;

# Group sales and profit by category
SELECT Category, SUM(Sales) AS Category_Sales, SUM(Profit) AS Category_Profit FROM amazon GROUP BY Category;

#The top 5 products by sales
SELECT `Product Name`, SUM(Sales) AS Product_Sales 
FROM amazon 
GROUP BY `Product Name` 
ORDER BY Product_Sales DESC 
LIMIT 5;

# AOV - Average Order Value
SELECT AVG(Sales) AS Average_Order_Value FROM amazon;

#Count of unique customers
SELECT COUNT(DISTINCT EmailID) AS Unique_Customers FROM amazon;

# Total Sales and Total Profit by State
SELECT State, SUM(Sales) AS State_Sales, SUM(Profit) AS State_Profit FROM amazon GROUP BY State;

# Products that Generated Losses
SELECT `Product Name`, SUM(Profit) AS Total_Profit 
FROM amazon 
WHERE Profit < 0 
GROUP BY `Product Name`;

# Sales and Profit Breakdown by Cities
SELECT City, SUM(Sales) AS City_Sales, SUM(Profit) AS City_Profit FROM amazon GROUP BY City;

# Number of Orders by City
SELECT City, COUNT(DISTINCT 'Order ID') AS NumberOfOrders
FROM amazon
GROUP BY City;

