-- Problem: Write a solution to find the IDs of the users who visited without making any transactions 
-- and the number of times they made these types of visits.
-- Difficulty: Easy
-- My approach: Basic Join
-- LeetCode #1581

SELECT 
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON t.visit_id = v.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
