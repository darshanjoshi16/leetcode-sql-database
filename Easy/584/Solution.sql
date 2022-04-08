
# Using IFNULL
select name
from customer
where IFNULL(referee_id, 0) <> 2
