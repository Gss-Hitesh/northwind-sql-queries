/* 24. Find the order with the highest total cost */
select o_d.order_id ,sum(unit_price * quantity - (unit_price * quantity * discount)) As "TotalNoOrders" 
from order_details o_d
inner join products p 
On p.product_id = o_d.product_id
group by o_d.order_id
Order by TotalNoOrders DESC;
