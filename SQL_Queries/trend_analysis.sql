SELECT * FROM pizza_sales

/*Daily Trend for Total Orders*/
SELECT DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) AS total_orders
	FROM pizza_sales
	GROUP BY DATENAME(DW, order_date) 


/*Monthly Trend for Orders*/
SELECT DATENAME(MONTH, order_date) as month_name, COUNT(DISTINCT order_id) AS total_orders
	FROM pizza_sales
	GROUP BY DATENAME(MONTH, order_date)

/* Percentage of Sales by Pizza Category*/
SELECT pizza_category, CAST(SUM(total_price)  AS DECIMAL(10,2)) as total_revenue, 
	CAST(SUM(total_price)*100/(SELECT sum(total_price)  FROM pizza_sales) AS decimal(10,2)) AS PCT
	FROM pizza_sales
	GROUP BY pizza_category

/* Percentage of Sales by Pizza Size*/
SELECT pizza_size, CAST(SUM(total_price)  AS DECIMAL(10,2)) as total_revenue, 
	CAST(SUM(total_price)*100/(SELECT sum(total_price)  FROM pizza_sales) AS decimal(10,2)) AS PCT
	FROM pizza_sales
	GROUP BY pizza_size

/*Total Pizzas Sold by Pizza Category*/
SELECT pizza_category, SUM(quantity) as total_quantity_sold 
	FROM pizza_sales
	WHERE MONTH(order_date) = 2 
	GROUP BY pizza_category
	ORDER BY Total_Quantity_Sold DESC