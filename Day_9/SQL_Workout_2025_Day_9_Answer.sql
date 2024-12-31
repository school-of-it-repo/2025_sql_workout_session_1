 with _data as (
  select 
    dish_name, 
    event_name, 
    calories / weight_g as calories_per_gram, 
    dense_rank() over (
      partition by event_name 
      order by 
        (calories / weight_g) desc
    ) as calories_rank 
  from 
    school_of_it_2025.events e 
    inner join school_of_it_2025.menu m on e.event_id = m.event_id
) 
select 
  dish_name, 
  event_name, 
  calories_per_gram 
from 
  _data 
where 
  calories_rank <= 3;

  
  
  