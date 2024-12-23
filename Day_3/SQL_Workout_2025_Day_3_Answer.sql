
select 
	candy_name 
	,candy_category
	,calories
	,dense_rank() over(partition by candy_category order by calories desc) as "rank"

from 
	school_of_it_2025.candy_nutrition;