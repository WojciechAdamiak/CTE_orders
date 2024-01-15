with
needed_regions as
	(
	select delivery_region
	from sales_europe.orders
	group by 1
	having count(distinct customer_id) > 0
	),
all_orders as 
	(
	select count(order_id) as total_orders
	from sales_europe.orders
	),	
dr_orders as 
	(
	select
		delivery_region
		,count(order_id) as orders_dr
	from sales_europe.orders 
	group by 1
	),
dr_sm_orders as
	(
	select 
		delivery_region,
		shipping_mode,
		count(o.order_id) as orders_dr_sm
	from sales_europe.orders o
	group by 1, 2
	)
select 
	drr.delivery_region,
	drr.shipping_mode,
	ao.total_orders,
	dro.orders_dr,
	drr.orders_dr_sm,
	round((drr.orders_dr_sm / dro.orders_dr) * 100, 1) as dr_ratio_percent
from dr_sm_orders		drr
join dr_orders			dro on drr.delivery_region = dro.delivery_region
join needed_regions		nr 	on nr.delivery_region = drr.delivery_region
cross join all_orders 	ao
order by 1, 2
	
