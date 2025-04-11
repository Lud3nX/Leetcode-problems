-- select count(product_key) from product
select c.customer_id from customer c
group by c.customer_id
having (count(distinct product_key) = (select count(product_key) from product))