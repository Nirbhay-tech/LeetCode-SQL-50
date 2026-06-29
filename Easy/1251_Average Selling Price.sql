# Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

-- Return the result table in any order.

SELECT p.product_id , IFNULL(ROUND(SUM(p.price*us.units)/SUM(us.units),2),0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold us
ON p.product_id=us.product_id
AND p.start_date <= us.purchase_date AND 
p.end_date >= us.purchase_date
GROUP BY p.product_id