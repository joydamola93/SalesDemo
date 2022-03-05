select * from internationalbreweries.pabod;
##Profit worth of breweries in anglophone countries
select countries as Anglophone_countries,years,sum(profit)as Totalprofit from internationalbreweries.pabod
where countries in ('Ghana','Nigeria') and years in (2017,2018,2019)
group by 1,2
order by 2,3 desc;
##Profit worth of breweries in anglophone countries
select countries as Francophone_countries,years,sum(profit)as Totalprofit from internationalbreweries.pabod
where countries in ('Togo','Benin','Senegal')and years in (2017,2018,2019)
group by 1,2
order by 2,3 desc;
###ountries that generated the highest profit in 2019
select countries,sum(profit) from internationalbreweries.pabod
where years = 2019
group by 1
order by 2 desc;
###year with the highest profit
select years, sum(profit) from internationalbreweries.pabod
group by 1
order by 2 desc;
##Least profit generated in months
select months,sum(profit) from internationalbreweries.pabod
where years in (2017,2018,2019)
group by 1
order by 2; 
###Minimum profit in month of Dec 2018
select months,years,min(profit) from internationalbreweries.pabod
where months = 'December' and years = 2018
group by 1,2;
###Minimum Profit in the month of dec 2018-----
select years,months,min(profit) from internationalbreweries.pabod
where years =2018 and months = 'December'
group by 1,2;
##Brands that generated the highest profit in December
select brands,sum(profit) from internationalbreweries.pabod
where countries = 'Senegal'
group by brands
order by 2 desc;
##Top three brands consumed in francophone countries in last two years
select countries as francophone_countries,brands, years,sum(quantity) from internationalbreweries.pabod
where countries in ('Togo','Benin','Senegal') and years in (2018,2019)
group by 1,2,3
order by 4 desc
limit 3;
####Top two consumer brands in Ghana
select brands,sum(quantity) from internationalbreweries.pabod
where countries = 'Ghana'
group by 1
order by 2 desc
limit 2;
####Beers consumed in Nigeria---------
select brands as beers,sum(quantity) from internationalbreweries.pabod
where brands not in ('grand malt','beta malt') and countries = 'Nigeria'
group by 1
order by 2 desc;
###favourite malt in Anglophone
select countries as Anglophone_countries, brands, sum(quantity) from internationalbreweries.pabod
where brands in ('grand malt','beta malt') and countries in ('Ghana','Nigeria') and years in (2018,2019)
group by 1,2
order by 3 desc;
###Highest brand sold in Nigeria-------
select brands,sum(profit) from internationalbreweries.pabod
where countries = 'Nigeria'and years = 2019
group by 1
order by 2 desc;
###Favorites  brand in south-south region in Nigeria----
select brands,region,sum(quantity) from internationalbreweries.pabod
where countries = 'Nigeria' and region = 'southsouth'
group by 1,2
order by 3 desc;
####Beer in Nigeria
select brands as beer,sum(quantity) from internationalbreweries.pabod
where brands not in ('grand malt','beta malt') and countries = 'Nigeria'
group by 1
order by 2 desc;
####consumption of budweiser in the region nigeria
select brands, region,sum(quantity) from internationalbreweries.pabod
where brands = 'budweiser' and countries = 'Nigeria'
group by 1,2
order by 3 desc;
###consumption of budweiser in the region nigeria 2019
select brands, region,sum(quantity) from internationalbreweries.pabod
where brands = 'budweiser' and countries = 'Nigeria'and years = 2019
group by 1,2
order by 3 desc;

###countries with the highest consumption of beer
select countries, brands as beer,sum(quantity) from internationalbreweries.pabod
where brands not in ('beta malt','grand malt')
group by 1,2
order by 1,2,3 desc;
####Highest sales personal
select sales_rep,brands, sum(quantity) from internationalbreweries.pabod
where brands = 'budweiser' and countries = 'Senegal'
group by 1,2
order by 3 desc;

select countries,years, sum(profit)/4 from internationalbreweries.pabod
where years = 2019
group by 1,2
order by 3 desc;


