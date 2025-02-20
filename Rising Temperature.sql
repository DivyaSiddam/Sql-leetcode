#https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
SELECT id 
FROM (
    SELECT id, temperature, recordDate, 
           LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp
    FROM Weather
) temp_table
WHERE temperature > prev_temp;
