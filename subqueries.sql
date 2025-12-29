use united_nations;
-- the query formula 
-- select 
	-- country_name,
    -- round((land_area/total_land_area)*100) as pct_regional land
-- from geographic_location
-- where sub_region = 'Middle Africa'

-- calculate the total land area 
select sum(land_area) from geographic_location
where sub_region = 'Middle Africa';

-- input the total land area syntax into the query below
select 
	country_name,
    round((land_area/(select sum(land_area) from geographic_location
			where sub_region = 'Middle Africa')*100)) as pct_regional_land
from geographic_location
where sub_region = 'Middle Africa';