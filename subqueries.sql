
SELECT * from employees

SELECT * from departments
-- Retrieve all employees whose salary is greater than the highest salary of the HR department

select * from employees
WHERE salary > (
    SELECT max(salary) FROM employees e
   join departments d on e.employee_id = d.department_id
   where d.department_name = 'HR'
)

