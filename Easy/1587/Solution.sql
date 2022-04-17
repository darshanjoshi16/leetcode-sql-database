# Write your MySQL query statement below
select u.name as name, sum(T.amount) as Balance
from Users as u, Transactions as T
where u.account = T.account
group by u.account
having sum(T.amount) > 10000
