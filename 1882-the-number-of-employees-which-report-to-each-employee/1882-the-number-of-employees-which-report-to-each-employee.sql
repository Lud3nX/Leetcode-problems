select employee_id, name, count(sub.reports_to) as reports_count, round(avg(sub.age),0) as average_age from
(select  a1.employee_id, a1.name, a2.reports_to, a2.age
from employees a1
inner join employees a2
on a1.employee_id = a2.reports_to) as sub
group by employee_id, name
order by employee_id