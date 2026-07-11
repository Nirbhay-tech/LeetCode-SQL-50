# You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).

-- Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.

-- Return the result table ordered by visited_on in ascending order.

SELECT visited_on,
    (
        SELECT SUM(amount)
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 Day)
        AND c.visited_on
    ) AS amount,
    ROUND((
        SELECT SUM(amount)/7
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 Day)
        AND c.visited_on
    ), 2) AS average_amount
FROM Customer c
WHERE visited_on >=(
    SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 Day)
    FROM Customer
)
GROUP BY visited_on
ORDER BY visited_on