-- Problem: Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
-- Difficulty: Easy
-- My approach: Self Join
-- LeetCode #197

SELECT 
    w1.id
FROM 
    Weather w1
JOIN 
    Weather w2
ON 
    DATEDIFF(w1.recordDate, w2.recordDate) = 1 --The difference between the two dates must be 1 day.
WHERE 
    w1.temperature > w2.temperature;
