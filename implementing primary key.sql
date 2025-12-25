-- create table from existing table in united_nations dataset
create table united_nations.geographic_locations (
country_name varchar(37) primary key,
sub_region varchar(25),
region varchar(32),
land_area numeric(10,2)
);

-- import data into newly created table
insert into united_nations.geographic_locations (country_name, sub_region, region, land_area)
select 
	country_name, 
    sub_region, 
    region, 
    avg(land_area) -- aggregated land_area is created in order to turning the outcome into single value 
				   -- due to we group by the country_name, sub_region, and region that the result is changing into single/unique value
                   -- synchronizing the land_area by aggregating the value to make the result to be one row/single value
from united_nations.access_to_basic_services
group by  -- group by 3 attributes helps us to create uniqe value 
	country_name,
    sub_region,
    region;
