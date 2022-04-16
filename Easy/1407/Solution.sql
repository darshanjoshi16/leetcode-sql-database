# Write your MySQL query statement below
SELECT name, COALESCE(SUM(distance), 0) AS travelled_distance
FROM users u LEFT JOIN rides r ON u.id = r.user_id
GROUP BY u.name ORDER BY travelled_distance DESC, u.name
