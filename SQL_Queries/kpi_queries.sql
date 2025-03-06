SELECT * FROM pizza_sales


/*Total Revenue*/
SELECT SUM(total_price) AS total_revenue FROM pizza_sales

/*Average order value*/
SELECT SUM(total_price)/COUNT(DISTINCT order_id ) AS avg_order_value FROM pizza_sales

/*Total Pizzas Sold*/
SELECT SUM(quantity) AS total_pizzas_sold FROM pizza_sales

/*Total order*/
SELECT COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales

/*Average Pizzas Per Order*/
SELECT CAST(
	CAST(SUM(quantity) AS decimal(10,2))
	/CAST(COUNT(DISTINCT order_id) AS decimal(10,2)) 
	AS decimal(10,2)) 
	AS avg_pizzas_per_order 
	FROM pizza_sales