# Write your MySQL query statement below
SELECT w1.Id FROM Weather w1
JOIN weather w2 ON w2.recorddate = date_sub(w1.recorddate, interval 1 day)
WHERE w1.temperature > w2.temperature
