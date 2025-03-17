# Write your MySQL query statement below
select a1.id from weather a1, weather a2
where datediff(a1.recordDate,a2.recordDate) = 1 and a1.temperature > a2.temperature