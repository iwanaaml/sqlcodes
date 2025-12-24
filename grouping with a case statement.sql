use united_nations;
select * from access_to_basic_services
where region like '%africa%';
select
	case 
		when country_name in ('angola', 'botswana', 'comoros', 'democratic republic of congo', 'eswatini', 
							  'lesotho', 'madagascar', 'malawi', 'mauritius', 'mozambique', 'namibia', 
                              'seychelles', 'south africa', 'united republic tanzania', 'zambia', 'zimbabwe')
		then 'SADC'
        
        when country_name in ('algeria', 'libya', 'mauritania', 'morocco', 'tunisia')
        then 'UMA'
        
        when country_name in ('condo', 'burkina faso', "cabo verde', 'cote d'ivoire", 'gambia', 'ghana', 'guinea',
							  'guinea-bissau', 'liberia', 'mali', 'niger', 'nigeria', 'senegal', 'sierra leone', 'togo')
		then 'ECOMAS'
		
        else 'not classified'
    end as 
		Regional_economic_community,
        min(Pct_managed_drinking_water_services) as min_pct_managed_drinking_water_services,
        avg(Pct_managed_drinking_water_services) as avg_pct_managed_drinking_water_services,
        max(Pct_managed_drinking_water_services) as max_pct_managed_drinking_water_services
from access_to_basic_services
where region like '%africa%'
group by 
	case 
		when country_name in ('angola', 'botswana', 'comoros', 'democratic republic of congo', 'eswatini', 
							  'lesotho', 'madagascar', 'malawi', 'mauritius', 'mozambique', 'namibia', 
                              'seychelles', 'south africa', 'united republic tanzania', 'zambia', 'zimbabwe')
		then 'SADC'
        
        when country_name in ('algeria', 'libya', 'mauritania', 'morocco', 'tunisia')
        then 'UMA'
        
        when country_name in ('condo', 'burkina faso', "cabo verde', 'cote d'ivoire", 'gambia', 'ghana', 'guinea',
							  'guinea-bissau', 'liberia', 'mali', 'niger', 'nigeria', 'senegal', 'sierra leone', 'togo')
		then 'ECOMAS'
		
        else 'not classified'
	end;