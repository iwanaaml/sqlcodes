use united_nations;
select distinct
	country_name,
    time_period,
    Est_population_in_millions,
    concat(
		substring(upper(ifnull(Country_name, 'UNKNWON')),1,4),
        substring(ifnull(Time_period, 'UNKNOWN'), 1,4),
        substring(ifnull(Est_population_in_millions, 'UNKNWON'), -7)
	) as country_id
from access_to_basic_services;