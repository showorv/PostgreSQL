-- virual code based on the result of sql query. it doesn't store data itself

CREATE View hr_dept AS
select department_name , avg(Salary) 
from employees e
join departments d on e.employee_id = d.department_id
GROUP BY department_name;

select * from hr_dept

-- another view is materialized view which is faster and store data
