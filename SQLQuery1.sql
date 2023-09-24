--SELECT * from pizza_sales
--SELECT SUM(total_price) AS Total_Revenue from pizza_sales

--SELECT SUM(total_price) / COUNT(DISTINCT order_id) as Avg_Order_Value from pizza_sales

--SELECT SUM(quantity) AS Total_Pizza_Sold from pizza_sales

--SELECT COUNT(DISTINCT order_id) AS Total_Orders from pizza_sales

--SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) / COUNT(DISTINCT order_id) from pizza_sales

--SELECT DATENAME(DW, order_date) AS order_day , COUNT(DISTINCT order_id) AS Total_orders from pizza_sales 
--GROUP BY DATENAME(DW, order_date)

/*SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
Group By DATENAME(MONTH, order_date)
ORDER BY Total_orders DESC*/

/*SELECT pizza_category, sum(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales)
from pizza_sales
GROUP BY pizza_category */

/*SELECT pizza_size, sum(total_price) *100 / (SELECT SUM(total_price) from pizza_sales)
from pizza_sales
GROUP BY pizza_size*/

/*SELECT TOP 5 pizza_name , SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC*/

/*SELECT TOP 5 pizza_name , SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC*/

SELECT TOP 5 pizza_name , COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC



