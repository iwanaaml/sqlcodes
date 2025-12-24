use united_nations;
select 
	region,
    pct_unemployment,
    if (
		(region = 'central and southern asia') and (Pct_unemployment is null), 19.59, 
		if ((region = 'eastern and south-eastern asia') and (pct_unemployment is null), 22.64, 
			if ((region = 'europe and northern america') and (pct_unemployment is null), 24.43,
				if ((region = 'latin america and the cribbean') and (pct_unemployment is null), 24.23,
					if((region = 'northern africa and western asia') and (pct_unemployment is null), 17.84,
						if((region = 'oceania') and (pct_unemployment is null), 4.98,
							if((region = 'sub-saharan africa') and (pct_unemployment is null), 33.65,
                            -999)
                            )
						)
					)
				)
			)
	) as new_pct_unemployment
from access_to_basic_services;