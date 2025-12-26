use united_nations;
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%central and southern asia%'

union
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%eastern and southern asia%'

union
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%europe and northern america%'
     
union
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%latin america and caribbean%'
     
union
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%northern africa and western asia%'
     
union
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%ocenia%'
	
union
select
	loc.country_name,
    eco.time_period,
    ifnull(eco.Pct_unemployment,19.59) as pct_unemployment_imputed
from united_nations.geographic_location as loc
left join
	united_nations.economic_indicators as eco
    on loc.country_name = eco.country_name
where
	 region like '%sub-saharan africa%';