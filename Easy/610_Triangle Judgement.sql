# Report for every three line segments whether they can form a triangle. 

SELECT *, 
    IF(x+y > z AND y+z > x AND z+x > y, "Yes", "No") as triangle
    FROM Triangle;
  