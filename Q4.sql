-- Problem : Write a solution to find all the authors that viewed at least one of their own articles. 
-- Return the result table sorted by id in ascending order.
-- Difficulty : Easy
-- LeetCode #1148
-- My approach : Use DISTINCT to get the authors

SELECT 
    DISTINCT(author_id) AS id
FROM 
    Views
WHERE 
    author_id = viewer_id
ORDER BY 
    id ASC;
