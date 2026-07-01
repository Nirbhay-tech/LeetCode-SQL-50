# solution to find each query_name, the quality and poor_query_percentage.

-- Both quality and poor_query_percentage should be rounded to 2 decimal places.

SELECT query_name, ROUND(AVG(rating/position), 2) AS quality,
ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) *100 ,2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;