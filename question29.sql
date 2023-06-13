/* 29. Find the month in the year 2016 with the highest total sales */
select Month(oDate) As month, round(sum(p.unit_price * od.quantity - p.unit_price * od.quantity * od.discount),2) as summation
from products p 
Inner join order_details od
on p.product_id = od.product_id
inner join
(select o.order_id as oID, o.order_date as oDate
 from orders o
 where Year(o.order_date) = 2016 )
 on od.order_id = oID 
 Group by Month(oDate) 
 order By round(sum(p.unit_price * od.quantity - p.unit_price * od.quantity * od.discount),2) desc limit 1;
