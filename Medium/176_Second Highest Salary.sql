#  solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).

SELECT MAX(e1.salary) AS SecondHighestSalary
FROM Employee e1
INNER JOIN Employee e2
ON e1.salary < e2.salary;