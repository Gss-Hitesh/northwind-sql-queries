/* 35. Find the total sales for each year */
select round(sum(od.quantity * p.unit_price - (od.quantity * p.unit_price* od.discount)),2)  as totalSales, years 
from order_details od
inner join  
(select orders.order_id as ordId, year(orders.order_date)  as years
from orders) 
on od.order_id = ordId
inner join products p 
on p.product_id = od.product_id
group by years
