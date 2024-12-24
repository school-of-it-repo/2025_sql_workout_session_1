with recursive cte (apex_id, employee_id, salary) AS
(
       select employee_id,
              employee_id,
              salary,
              '1' stage
       from   school_of_it_2025.employee_tiger_q_1
       union all
       select cte.apex_id,
              employee.employee_id,
              employee.salary,
              '2' stage
       from   cte
       join   school_of_it_2025.employee_tiger_q_1 employee
       on     employee.manager_id = cte.employee_id )
select   employee.*,
         sum(cte.salary) as total_salary
from     cte
join     school_of_it_2025.employee_tiger_q_1 employee
on       employee.employee_id = cte.apex_id
group by employee.employee_id
order by employee.employee_id;