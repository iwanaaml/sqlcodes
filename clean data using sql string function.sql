use united_nations;
select * from access_to_basic_services;
select 
	distinct country_name,
    length(country_name) as string_length,
    position('(' in country_name) as position_opening_bracket,
    rtrim(left(country_name, position('(' in country_name)-1)) as new_country,
    length( rtrim(left(country_name, position('(' in country_name)-1))) as new_country_length
from access_to_basic_services
where country_name like '%(%)%';