SELECT * FROM pizza_sales

/*Top 5 Pizzas by Revenue*/
SELECT TOP 5 pizza_name, SUM(total_price) as total_revenue 
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY total_revenue DESC

/*Bottom 5 Pizzas by Revenue*/
SELECT TOP 5 pizza_name, SUM(total_price) as total_revenue 
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY total_revenue ASC

/*Top 5 Pizzas by Quantity*/
SELECT TOP 5 pizza_name, SUM(quantity) AS total_pizzas_sold 
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY total_pizzas_sold DESC

/*Top 5 Pizzas by Quantity*/
SELECT TOP 5 pizza_name, SUM(quantity) AS total_pizzas_sold 
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY total_pizzas_sold ASC

/*Top 5 Pizzas by Total Orders*/
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) as total_by_orders 
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY total_by_orders DESC

/*Bottom 5 Pizzas by Total Orders*/
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) as total_by_orders 
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY total_by_orders ASC