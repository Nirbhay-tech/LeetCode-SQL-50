# solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
SELECT eu.unique_id,e.name 
FROM EmployeeUNI eu RIGHT JOIN  Employees e
ON eu.id=e.id;