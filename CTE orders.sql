INSERT INTO `with
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
order by 1, 2` (delivery_region,shipping_mode,total_orders,orders_dr,orders_dr_sm,dr_ratio_percent) VALUES
	 ('Auvergne-Rhône-Alpes','Second Class',73,2,2,100.0),
	 ('Bavaria','First Class',73,3,1,33.3),
	 ('Bavaria','Second Class',73,3,2,66.7),
	 ('Berlin','First Class',73,4,2,50.0),
	 ('Berlin','Second Class',73,4,2,50.0),
	 ('Brandenburg','Second Class',73,3,1,33.3),
	 ('Brandenburg','Standard Class',73,3,2,66.7),
	 ('București – Ilfov','Second Class',73,3,2,66.7),
	 ('București – Ilfov','Standard Class',73,3,1,33.3),
	 ('Capital Region of Denmark','Second Class',73,2,1,50.0);
INSERT INTO `with
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
order by 1, 2` (delivery_region,shipping_mode,total_orders,orders_dr,orders_dr_sm,dr_ratio_percent) VALUES
	 ('Capital Region of Denmark','Standard Class',73,2,1,50.0),
	 ('Catalonia','Standard Class',73,1,1,100.0),
	 ('Greater London','First Class',73,2,1,50.0),
	 ('Greater London','Second Class',73,2,1,50.0),
	 ('Île-de-France','First Class',73,4,4,100.0),
	 ('Lazio','Second Class',73,3,2,66.7),
	 ('Lazio','Standard Class',73,3,1,33.3),
	 ('Lesser Poland','First Class',73,3,1,33.3),
	 ('Lesser Poland','Second Class',73,3,2,66.7),
	 ('Lisbon','Second Class',73,3,2,66.7);
INSERT INTO `with
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
order by 1, 2` (delivery_region,shipping_mode,total_orders,orders_dr,orders_dr_sm,dr_ratio_percent) VALUES
	 ('Lisbon','Standard Class',73,3,1,33.3),
	 ('Lombardy','First Class',73,5,2,40.0),
	 ('Lombardy','Second Class',73,5,1,20.0),
	 ('Lombardy','Standard Class',73,5,2,40.0),
	 ('Lower Silesia','Second Class',73,2,1,50.0),
	 ('Lower Silesia','Standard Class',73,2,1,50.0),
	 ('Madrid','Second Class',73,4,4,100.0),
	 ('Masovia','Second Class',73,3,2,66.7),
	 ('Masovia','Standard Class',73,3,1,33.3),
	 ('North West England','First Class',73,3,2,66.7);
INSERT INTO `with
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
order by 1, 2` (delivery_region,shipping_mode,total_orders,orders_dr,orders_dr_sm,dr_ratio_percent) VALUES
	 ('North West England','Second Class',73,3,1,33.3),
	 ('Occitanie','Second Class',73,2,1,50.0),
	 ('Occitanie','Standard Class',73,2,1,50.0),
	 ('Piedmont','First Class',73,2,1,50.0),
	 ('Piedmont','Second Class',73,2,1,50.0),
	 ('Prague','Second Class',73,2,1,50.0),
	 ('Prague','Standard Class',73,2,1,50.0),
	 ('Provence-Alpes-Côte d''Azur','Second Class',73,2,1,50.0),
	 ('Provence-Alpes-Côte d''Azur','Standard Class',73,2,1,50.0),
	 ('Stockholm','First Class',73,2,1,50.0);
INSERT INTO `with
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
order by 1, 2` (delivery_region,shipping_mode,total_orders,orders_dr,orders_dr_sm,dr_ratio_percent) VALUES
	 ('Stockholm','Second Class',73,2,1,50.0),
	 ('Supcarpathia','Second Class',73,2,1,50.0),
	 ('Supcarpathia','Standard Class',73,2,1,50.0),
	 ('Uusimaa','Second Class',73,3,2,66.7),
	 ('Uusimaa','Standard Class',73,3,1,33.3),
	 ('Västra Götaland','Second Class',73,2,1,50.0),
	 ('Västra Götaland','Standard Class',73,2,1,50.0),
	 ('Vienna','First Class',73,2,2,100.0),
	 ('Vilnius County','Second Class',73,2,1,50.0),
	 ('Vilnius County','Standard Class',73,2,1,50.0);
INSERT INTO `with
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
order by 1, 2` (delivery_region,shipping_mode,total_orders,orders_dr,orders_dr_sm,dr_ratio_percent) VALUES
	 ('Zagreb County','Second Class',73,2,1,50.0),
	 ('Zagreb County','Standard Class',73,2,1,50.0);
