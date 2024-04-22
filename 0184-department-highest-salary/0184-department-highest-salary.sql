with cte as 
    ( select d.name as Department, 
        e.name as Employee, salary, 
        dense_rank() over(partition by d.name order by salary desc) as rnk 
    from employee e 
    join department d on e.departmentId = d.id )

select 
    Department, 
    Employee, 
    Salary 
from 
    cte 
where rnk = 1;