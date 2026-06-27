# Solution to report the name and bonus amount of each employee who satisfies either of the following:

-- The employee has a bonus less than 1000.
-- The employee did not get any bonus.

SELECT name, bonus FROM
Employee e Left JOIN Bonus b
ON e.empId=b.empId
Where bonus is NULL
OR bonus < 1000;