-- Problem: Find the names of the customer that are either:referred by any customer with id != 2., not referred by any customer.
-- Difficulty: Easy
-- My approach: Simple WHERE filter with OR condition
-- LeetCode #584

SELECT 
    name
FROM 
    Customer
WHERE 
    referee_id != 2 OR referee_id IS NULL;
