use united_nations;
select * from geographic_location;

-- left join among geographic_location, economic_indicators, and basic_services
select * 
from geographic_location as geo
left join
	united_nations.economic_indicators as eco
    on
    geo.country_name = eco.country_name
left join
	united_nations.basic_services as svc
    on
    geo.country_name = svc.country_name
    and 
    eco.time_period = svc.time_perod;  -- synchronizing the time_period (year) between eco table and svc table so that the data in these 2 joined tables can match by the year
									   -- using "AND" to make a criteria
