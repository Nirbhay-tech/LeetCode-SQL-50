--  solution to find the name, population, and area of the big countries.

SELECT name, population, area 
FROM World
where area >= 3000000 or population >= 25000000;

