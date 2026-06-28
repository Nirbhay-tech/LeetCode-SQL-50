# solution to find the confirmation rate of each user.

SELECT s.user_id, IFNULL(ROUND(SUM(action='confirmed')/COUNT(*) , 2) , 0.00) AS confirmation_rate
FROM Signups s 
LEFT JOIN Confirmations c
on s.user_id = c.user_id
GROUP BY s.user_id; 
