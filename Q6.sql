-- Problem: Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
-- Difficulty: Easy
-- My approach: Basic Join
-- LeetCode #1378

SELECT 
    e.unique_id, 
    s.name
FROM 
    Employees s
LEFT JOIN 
    EmployeeUNI e
ON 
    s.id = e.id;
