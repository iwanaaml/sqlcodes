-- SUBQUERIES IN "JOIN"
-- MAKE SYNTAX FOR THE SUBQUERIES
-- select 
	-- sub_region,
    -- sum(land_area) as total_land_area
-- from geographic_location
-- group by sub_region;

-- CREATE THE MAIN QUERY
select
	geoloc.country_name,
    geoloc.land_area,
    geoloc.sub_region,
    (geoloc.land_area/land_per_region.total_land_area) * 100 as pct_of_region_land
from geographic_location as geoloc
join
	(
    select 
		sub_region,
		sum(land_area) as total_land_area
	from geographic_location
	group by sub_region
    ) as land_per_region;
    
-- SUBQUERIES IN "FROM"
-- CREATE SYNTAX FOR THE SUBQUERY
-- select
	-- country_name,
    -- Est_gdp_in_billions,
    -- Est_population_in_millions
-- from economic_indicators
-- where 
	-- pct_unemployment > 5
    -- and time_period = 2020
    
-- CREATE THE MAIN QUERY
select
	country_name,
    avg(Est_gdp_in_billions) as avg_gdp,
    avg(Est_population_in_millions) as avg_population
from 
	(select
		country_name,
		Est_gdp_in_billions,
		Est_population_in_millions
	from economic_indicators
	where 
		pct_unemployment > 5
		and time_period = 2020
    ) as filtered_countries
group by country_name;

-- SUBQUERIES IN "wHERE"
-- CREATE SUBQUERY
-- select
	-- avg(Est_gdp_in_billions)
-- from economic_indicators
-- where time_period = 2020

-- CREATE MAIN QUERY
select
	econ.country_name,
    econ.time_period,
    econ.Est_gdp_in_billions,
    service.Pct_managed_drinking_water_services
from economic_indicators as econ
inner join basic_services as service
on
	econ.country_name = service.country_name
    and econ.time_period = service.time_period
where
	econ.time_period = 2020
    and service.Pct_managed_drinking_water_services < 90
    and econ.Est_gdp_in_billions > (select
										avg(Est_gdp_in_billions)
										from economic_indicators
										where time_period = 2020);