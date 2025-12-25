create table united_nations.economic_indicators(
country_name varchar(37),
time_period integer,
Est_gdp_in_billions numeric(10,2),
Est_population_in_millions numeric(10,2),
Pct_unemployment numeric(5,2),
primary key (country_name, time_period),
foreign key (country_name) references geographic_locations(country_name)
);

insert into united_nations.economic_indicators(
select
	country_name,
	time_period,
	Est_gdp_in_billions,
	Est_population_in_millions,
	Pct_unemployment
from 
	united_nations.access_to_basic_services
);
