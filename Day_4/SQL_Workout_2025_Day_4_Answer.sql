
select * from school_of_it_2025.ski_resorts;

select * from school_of_it_2025.snowfall;

select 
sr.region
,round(avg(sf.snowfall_inches),2) average_snowfall
from 
school_of_it_2025.ski_resorts sr
inner join school_of_it_2025.snowfall sf on sf.resort_id =sr.resort_id
group by sr.region
order by 2 desc 
