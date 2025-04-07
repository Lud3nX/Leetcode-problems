# Write your MySQL query statement below
select query_name, round(avg(rating / position),2) as quality,
round(sum(case
    when rating < 3 then 1
    else 0
END) / count(rating) *100,2) as poor_query_percentage
from queries q
group by q.query_name