use united_nations;
select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions
from access_to_basic_services
where
	(country_name = 'nigeria'
    or country_name = 'ethiopia'
    or country_name = 'congo'
    or country_name = 'egypt'
    or country_name = 'tanzania'
    or country_name = 'kenya'
    or country_name = 'south africa')
    and time_period between 2019 and 2020;
    
select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions
from access_to_basic_services
where
	time_period = 2020
    and pct_managed_sanitation_services <= 50
    and pct_managed_drinking_water_services <= 50;
    
select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions, region
from access_to_basic_services
where
	region = 'sub-saharan africa'
    and time_period <= 2020;
    
select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions, region
from access_to_basic_services
where
	region = 'sub-saharan africa'
    and time_period <= 2020
    and est_gdp_in_billions is null;

select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions, region
from access_to_basic_services
where
	region = 'sub-saharan africa'
    and time_period <= 2020
    and est_gdp_in_billions is not null;

select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions, region
from access_to_basic_services
where
	region = 'sub-saharan africa'
    and time_period = 2020
    and est_gdp_in_billions is not null
    and country_name in ('nigeria', 'south africa', 'ethiopia', 'kenya', 'ghana');
    
select country_name, time_period, pct_managed_drinking_water_services, pct_managed_sanitation_services, est_population_in_millions, est_gdp_in_billions, region
from access_to_basic_services
where
	region = 'sub-saharan africa'
    and time_period = 2020
    and est_gdp_in_billions is not null
    and country_name not in ('nigeria', 'south africa', 'ethiopia', 'kenya', 'ghana');
    
select Country_name, Time_period, Pct_managed_drinking_water_services, Pct_managed_sanitation_services from access_to_basic_services
where 
	country_name like 'iran%'
    or country_name like '%_republic of korea';
