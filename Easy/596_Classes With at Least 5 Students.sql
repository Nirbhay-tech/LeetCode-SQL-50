#  solution to find all the classes that have at least five students.


SELECT 
    class
FROM Courses 
GROUP BY class
HAVING COUNT(student) >= 5;
