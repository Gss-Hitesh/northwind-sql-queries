/* 19. Find the customers who have spent more than $5000 in total */
select c.company_name,sum(unit_price * quantity - (unit_price * quantity * discount)) as "spent" 
from customers c 
inner join orders o 
On c.customer_id = o.customer_id
Inner join order_details o_d
On o.order_id = o_d.order_id
inner join products p 
On p.product_id = o_d.product_id
group by c.customer_id
having sum(unit_price * quantity - (unit_price * quantity * discount)) > 5000;
