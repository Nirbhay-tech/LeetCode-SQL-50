# solution to report all the employees with their primary department. For employees who belong to one department, report their only department.

SELECT DISTINCT employee_id, department_id
FROM Employee
WHERE employee_id IN (
    SELECT employee_id 
    FROM Employee
    GROUP BY employee_id 
    HAVING COUNT(*) = 1
) OR primary_flag = 'Y'
ORDER BY employee_id;
