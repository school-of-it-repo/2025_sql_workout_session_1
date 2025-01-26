with _lt_table(value) as (
  values ('A'),('B'),('C'),('D'),(''),(NULL)
),
_rt_table(value) as (
   values ('A'),('C'),('C'),(''),(NULL)
)
select
  _lt_table.value,
  _rt_table.value
from
  _lt_table
  INNER join _rt_table on _lt_table.value = _rt_table.value
order by _lt_table.value;


with _lt_table(value) as (
  values ('A'),('B'),('C'),('D'),(''),(NULL)
),
_rt_table(value) as (
   values ('A'),('C'),('C'),(''),(NULL)
)
select
  _lt_table.value,
  _rt_table.value
from
  _lt_table
  RIGHT join _rt_table on _lt_table.value = _rt_table.value
order by _lt_table.value;

with _lt_table(value) as (
  values ('A'),('B'),('C'),('D'),(''),(NULL)
),
_rt_table(value) as (
   values ('A'),('C'),('C'),(''),(NULL)
)
select
  _lt_table.value,
  _rt_table.value
from
  _lt_table
  LEFT join _rt_table on _lt_table.value = _rt_table.value
order by _lt_table.value