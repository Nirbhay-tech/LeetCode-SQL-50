#  solution to report the product_name, year, and price for each sale_id in the Sales table. 

SELECT p.product_name, s.year, s.price
FROM Product p Join Sales s
ON p.product_id=s.product_id;