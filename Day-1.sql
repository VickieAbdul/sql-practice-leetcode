-- Problem: Write a solution to find the ids of products that are both low fat and recyclable.
-- Difficulty: Easy
-- My approach: Simple WHERE filter
-- LeetCode #1

SELECT
    product_id
FROM
    products
WHERE
    low_fats = 'Y' AND recyclable = 'Y';
