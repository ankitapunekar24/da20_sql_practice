select * from sales

select avg(qty), product_id from sales group by product_id

select * from sales having qty > avg(qty)

select avg(qty) from sales

select * from sales where qty  > (select avg(qty) from sales)

-- ERROR:  subquery must return only one column
-- select * from sales where qty  > (select sum(qty) , avg(qty) from sales)


select  *from sales where (ship_mode, product_id) = ('First Class', 'TEC-PH-10004977')


select * from sales where ship_mode = 'First Class' and product_id = 'TEC-PH-10004977'


select p.category, c.city, s.ship_mode, s.sales, s.qty  from product as p
inner join sales as s
on p.product_id = s.product_id 
inner join customer as c
on c.cust_id = s.cust_id



select c.city, nd.category, nd.ship_mode, nd.cust_id, nd.sum_sales, nd.sum_qty  
from (
	select p.category, s.ship_mode, s.cust_id, sum(s.sales) as "sum_sales", sum(s.qty ) as sum_qty from product as p
	inner join sales as s
	on p.product_id = s.product_id 
	group by p.category, s.ship_mode, s.cust_id
	)
	as nd
inner join customer as c
on  nd.cust_id = c.cust_id

-- 


product_id , qty avg(qty) 


select * from sales where qty  > (select avg(qty) from sales)




select avg(qty), product_id from sales group by product_id

select * from sales as s1 where qty >
	(
	select avg(qty) from sales  as s2
	where s1.product_id = s2.product_id
	group by product_id
	)

select * from sales as s
inner join 

select product_id , avg(qty) from sales group by product_id

'3.8571428571428571'

select * from sales where product_id = 'OFF-FA-10000304' and qty > 3.8571428571428571

select * from sales as s1 where qty >
	(
	select avg(qty) from sales  as s2
	where s1.product_id = s2.product_id
	group by product_id
	)

with product_avg_qty as (
select product_id, avg(qty) from sales  group by product_id 
)
select * from product_avg_qty as pvq
inner join product as p
on p.product_id = pvq.product_id
where category = 'Furniture'


with sales_product as (
    select product_id, avg(qty) as avg_qty
    from sales
    group by product_id
)
select s.*
from sales as s
join sales_product as sp on s.product_id = sp.product_id
where s.qty > sp.avg_qty;