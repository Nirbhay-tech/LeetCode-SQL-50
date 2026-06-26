# solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2
ON DateDIFF(w1.recordDate, w2.recordDate)=1
AND w1.temperature > w2.temperature;