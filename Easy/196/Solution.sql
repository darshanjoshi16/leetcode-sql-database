# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE FROM Person
WHERE Id != (
    SELECT Id FROM (SELECT * FROM Person) P
    WHERE Email = Person.Email
    ORDER BY Id
    LIMIT 1
)
