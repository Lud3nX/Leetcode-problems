-- select count(product_key) from product
select c.customer_id from customer c
inner join product p using(product_key)
where exists (select product_key from product p where c.product_key = p.product_key)
group by c.customer_id
having (count(distinct product_key) = (select count(product_key) from product))