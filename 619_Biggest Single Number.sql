# single number is a number that appeared only once in the MyNumbers table.

-- Find the largest single number. If there is no single number, report null.

SELECT MAX(num) as num
FROM MyNumbers
where num IN (
    SELECT num
    FROM MyNumbers 
    GROUP BY num
    HAVING COUNT(*) = 1
)

