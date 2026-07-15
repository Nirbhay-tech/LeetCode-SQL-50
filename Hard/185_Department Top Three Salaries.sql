# A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

-- Write a solution to find the employees who are high earners in each of the departments.

SELECT d.name AS Department,
       e1.name AS Employee,
       e1.salary AS Salary
FROM Employee e1
JOIN Department d
ON e1.departmentId = d.id
WHERE 3 >(
    SELECT COUNT(DISTINCT (e2.salary))
    FROM Employee e2
    WHERE e2.salary > e1.salary AND
    e1.departmentId = e2.departmentId
)

