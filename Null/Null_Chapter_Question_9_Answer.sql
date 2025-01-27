with _lt_table(value) as (
  values ('A'),('B'),('B'),('C'),('D'),(NULL),(NULL),('E')
)
select
value
,row_number() over() as _row_number
,row_number() over(partition by value) as _row_number_with_partition

from
	_lt_table
order by value