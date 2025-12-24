use united_nations;
select distinct
	country_name,
    time_period,
    Est_population_in_millions,
    Est_gdp_in_billions,
    (Est_gdp_in_billions/Est_population_in_millions) * 1000 as GDP_per_capita,
    if (time_period < 2017, 1.90, 2.50) as poverty_line,
    case
		when ((Est_gdp_in_billions/Est_population_in_millions) * (1000/365.25)) < if (time_period < 2017, 1.90, 2.50)
        then 'low'
        
        when ((Est_gdp_in_billions/Est_population_in_millions) * (1000/365.25)) > if (time_period < 2017, 1.90, 2.50)
        then 'high'
        
        else 'medium'
	end as income_group
from access_to_basic_services
where Est_gdp_in_billions is not null; 