# Write your MySQL query statement below
select customer_id,count(v.visit_id) as count_no_trans from Visits v where v.visit_id not in(select t.visit_id from Transactions t) group by customer_id
order BY count_no_trans DESC
