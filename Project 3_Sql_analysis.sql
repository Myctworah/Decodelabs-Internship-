--==========================================
-- PROJECT 3: SQL DATA ANALYSIS
-- Dataset: sales_data
-- Objective: Extract meaningful insights using SQL
--===========================================

-- 1. View all records in the dataset
SELECT *
FROM sales_data;

-- 2. Display Selected Columns
SELECT OrderID, Product, Quantity, TotalPrice
FROM sales_data;

-- 3. Find all Delivered orders
SELECT * 
FROM sales_data
WHERE OrderStatus = 'Delivered';

-- 4. Find Orders where Total Price is greater than 100
SELECT *
FROM sales_data
WHERE TotalPrice > 100;

-- 5. Display all orders sorted by Total Price. Highest to Lowest
SELECT OrderID, Product, TotalPrice
FROM sales_data
ORDER BY TotalPrice DESC;

-- 6. Count the total number of orders
SELECT COUNT(*) AS TotalOrders
FROM sales_data;

-- 7. Calculate the Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM sales_data;

-- 8. Calculate the average order value
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM sales_data;

-- 9. Count the number of orders by Order Status
SELECT OrderStatus,
COUNT(*) AS Number_of_Orders
FROM sales_data
GROUP BY OrderStatus;

-- 10. Calculate the total Sales by Products
SELECT Product,
SUM(TotalPrice) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC;

-- 11. Calculate Average Unit Price by Product
SELECT Product,
AVG(UnitPrice) AS Average_Unit_Price
FROM sales_data
GROUP BY Product
ORDER BY Average_Unit_Price DESC;

-- 12. Count Orders by Payment Method
SELECT PaymentMethod,
COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

-- 13. Calculate Total Sales by Referral Source
SELECT ReferralSource,
SUM(TotalPrice) AS Total_Sales
FROM sales_data
GROUP BY ReferralSource
ORDER BY Total_Sales DESC;

-- 14. Calculate Total Quantity Sold for each Product
SELECT Product,
SUM(Quantity) AS Total_Quantity_Sold
FROM sales_data
GROUP BY Product
ORDER BY Total_Quantity_Sold DESC;
