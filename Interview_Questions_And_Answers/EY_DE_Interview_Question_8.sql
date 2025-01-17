with _data as 
(
select '2024-01-10'::DATE as sales_dated_on,100 as sales_amount
union all 
select '2024-01-11'::DATE ,20 
union all 
select '2024-01-12'::DATE ,200 
union all 
select '2024-01-13'::DATE ,300
union all 
select '2024-01-13'::DATE ,400
union all 
select '2024-01-13'::DATE ,600
union all 
select '2024-01-14'::DATE ,700

) 
select 
sales_dated_on
,sales_amount
from _data

