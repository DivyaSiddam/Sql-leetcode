#https://leetcode.com/problems/find-customer-referee/?envType=study-plan-v2&envId=top-sql-50
SELECT name
FROM (
    SELECT id, name, referee_id, 
           LAG(referee_id) OVER (ORDER BY id) AS prev_referee
    FROM Customer
) temp_table
WHERE referee_id IS NULL OR referee_id <> 2;
