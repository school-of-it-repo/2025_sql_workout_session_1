select 
  customer_name, 
  count(distinct activity) distinct_activites
from 
  rentals 
group by 
  customer_name 
having 
  count(distinct activity) > 1;
