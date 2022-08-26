/*Which are the top 3 demanding services on board?*/
select i.item_name, sum(s.quantity) as total_volume from sales_item s inner join item i on s.item_id = i.item_id
group by i.item_name
order by total_volume desc limit 3;




/*Show the average number of tons of food & drinks needed per day.*/
select s.sales_date_time, i.seg_name, (avg(i.weight)/1000) as average_food_beverages_in_tons 
from sales_item si, onboard_sales s,
(select 
i.item_id, 
i.item_name, 
i.weight, 
u.metric_name, 
s.seg_name 
	from item i, unit_measure u, category c, class cl, family f, segment s
	where (i.unit_measure_id = u.unit_measure_id) and 
			(i.category_id = c.category_id) and
			(c.class_id = cl.class_id) and
			(cl.family_id = f.family_id) and
			(f.segment_id = s.segment_id) and
			(i.category_id in (
			select category_id from category where class_id in (
			select class_id from class where family_id in (
			select family_id from family where family.segment_id = 1))))
			group by i.item_id, i.item_name, i.weight, u.metric_name) i
			where (si.sales_id = s.sales_id) and (si.item_id = i.item_id)
			group by s.sales_date_time, i.seg_name;





/*summed total revenue from tickets and onboard sales and calculated average revenue per day based on actual transaction days. 
The result is the average revenue per day and if the ship is in repair, this average revenue will be lost.*/
select (sum(t.total) / count(t.revenue_date)) from
(
select t.date_time as revenue_date, c.currency_code, sum(t.total_order) as total from tickets t, currency c
where t.currency_id = c.currency_id
group by t.date_time, c.currency_code
union all
select s.sales_date_time as revenue_date, c.currency_code, sum(s.total_sales) as total from onboard_sales s, currency c
where s.currency_id = c.currency_id
group by s.sales_date_time, c.currency_code) t;




/*Which is the most profitable cruise route (include season)?*/
select se.route_name, se.season_name, c.currency_code, sum(t.total_order) as total_revenue from tickets t, currency c,
(select r.*, s.season_name from routes r, seasons s
where r.season_id = s.season_id) se
where t.route_id = se.route_id and t.currency_id = c.currency_id
group by se.route_name, se.season_name, c.currency_code
order by total_revenue desc
limit 1;




/*Analysis on highest selling (by quantity sold and revenue made) routes split into seasons and agents (selling channels)*/
select 
	a.agent_name, 
    r.route_name, 
    s.season_name, 
    count(t.passenger_id) as noOfPassengers, 
    sum(t.total_order) as totalRevenue
from 
	tickets t, 
    agents a, 
    routes r, 
    seasons s
where 
	(t.agent_id = a.agent_id) and 
    (t.route_id = r.route_id) and 
    (r.season_id = s.season_id)
group by 
	a.agent_name, 
    r.route_name, 
    s.season_name
order by 
	sum(t.total_order) desc,
    count(t.passenger_id) desc
