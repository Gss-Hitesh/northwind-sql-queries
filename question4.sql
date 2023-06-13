/* 4. Find the total sales (Quantity*Unit_Price) for each category of products */
select c.category_name, sum(p.unit_price * o.quantity ) As "total Sales"
from products p inner join order_details o     
On p.product_id = o.product_id
Inner join categories c 
On p.category_id = c.category_id
group by c.category_id;
