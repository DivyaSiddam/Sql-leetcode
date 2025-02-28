#https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 = 1  -- Select only odd-numbered IDs
AND description <> 'boring'  -- Exclude movies with "boring" description
ORDER BY rating DESC;  -- Sort by rating in descending order
