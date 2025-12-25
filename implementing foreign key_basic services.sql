-- create table from existing table in united_nations dataset
create table united_nations.basic_services(
country_name varchar(37),
time_period integer,
Pct_managed_drinking_water_services numeric(5,2),
Pct_managed_sanitation_services numeric(5,2),
primary key (country_name, time_period),
foreign key (country_name) references geographic_locations (country_name)
);

-- import data into newly created table
insert into united_nations.basic_services (country_name, time_period, Pct_managed_drinking_water_services, Pct_managed_sanitation_services)
select 
	country_name, 
    time_period, 
    Pct_managed_drinking_water_services, 
    Pct_managed_sanitation_services
from united_nations.access_to_basic_services;
