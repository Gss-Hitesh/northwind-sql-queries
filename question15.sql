/* 15. Find the total revenue for the year 2016 */
select round (sum(unit_price * quantity - (unit_price * quantity * discount)),2) AS "Revenue" 
from orders o 
inner join order_details o_d
On o.order_id = o_d.order_id
inner join products p
On p.product_id=o_d.product_id
where o.order_date between '2016-01-01' AND '2016-12-31';
