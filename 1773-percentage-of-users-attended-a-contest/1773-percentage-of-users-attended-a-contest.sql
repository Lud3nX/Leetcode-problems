# Write your MySQL query statement below
select distinct r.contest_id, round((count(r.contest_id) / count(distinct u.user_id)) / count(distinct u.user_id)* 100,2) as percentage from users u, register r
group by r.contest_id
order by percentage desc, r.contest_id asc

