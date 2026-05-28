-- Problem : Write a solution to report the name and bonus amount of each employee who satisfies either of the following:
-- The employee has a bonus less than 1000.
-- The employee did not get any bonus.
-- Difficulty : Easy
-- LeetCode #577
-- My approach : Left Join, Filter, and Conditioning

SELECT 
    e.name, 
    b.bonus
FROM 
    Employee e
LEFT JOIN 
    Bonus b
ON 
    e.empId = b.empId
WHERE 
    b.bonus < 1000 
OR 
    b.bonus IS NULL;
