create database united_nations;
use united_nations;
create table access_to_basic_services(
	Region varchar(32),
    Sub_region varchar(37),
    Country_name varchar(35) not null,
    Time_period integer not null,
    Pct_managed_drinking_water_services numeric(5,2),
    Pct_managed_sanitation_services numeric(5,2),
    Est_population_in_millions numeric(11,6),
    Est_gdp_in_billions numeric(8,2),
    Land_area numeric(10,2),
    Pct_unemployment numeric(5,2)
);

insert into access_to_basic_services(
	Region,
    Sub_region,
    Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    Pct_managed_sanitation_services,
    Est_population_in_millions,
    Est_gdp_in_billions,
    Land_area,
    Pct_unemployment
) values
	('Central and Southern Asia', 'Central Asia', 'Kazakhstan', 2020, 95.0, 98.0, 18.755666, 271.08, 2699700.0, 4.09),
    ('Sub-Saharan Africa', 'Southern Africa', 'Namibia', 2020, 83.67, 35.0, 2.489098, 10.58, 623290.0, NULL),
    ('Sub-Saharan Africa', 'Southern Africa', 'Lesotho', 2020, 76.33, 49.67, 2.2541, 2.23, 30030.0, NULL),
    ('Sub-Saharan Africa', 'Southern Africa', 'Bostwana', 2020, 89.67, 74.33, 2.546402, 14.93, 566730.0, 21.02);
    
delete from access_to_basic_services
where Sub_region = 'Central Asia'; -- if this code is showing an error, my sql must be in a safe mode (we need to remove the safe mode)

-- Remove the safe mode
SET SQL_SAFE_UPDATES = 0

truncate table access_to_basic_services;
