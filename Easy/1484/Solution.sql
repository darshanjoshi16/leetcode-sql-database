select sell_date, count(distinct product) num_sold, group_concat(distinct product order by product) products
from activities group by 1 order by 1
