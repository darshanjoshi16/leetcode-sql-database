# Write your MySQL query statement below
SELECT USER_ID, COUNT(*) AS followers_count
FROM Followers GROUP BY USER_ID ORDER BY USER_ID
