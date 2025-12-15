use united_nations;
select * from access_to_basic_services
limit 10;
-- select distinct column
select distinct Country_name from access_to_basic_services;

-- saving a query (distinct country_name) into a table
create table
	Country_list(
		Country_name VARCHAR(225)
	);
insert into	Country_list(
		Country_name 
	)
select distinct Country_name from access_to_basic_services;

-- check for country that has the lowest pct of peaople with access to managed drinking water services
select 
	Country_name, Time_period, Pct_managed_drinking_water_services as pct_access_water
from 
	Access_to_basic_services
where 
	Time_period = 2020;