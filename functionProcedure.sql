-- reuseable sql code block that accept parameters. useful for triggers automation.
  SELECT count(*) from employees

create Function count_all()
returns INT  
LANGUAGE SQL
AS
$$
    SELECT count(*) from employees
$$

SELECT count_all()


CREATE Function parameter_func(p_emp_id int)
RETURNS void
LANGUAGE SQL
AS
$$
        DELETE FROM employees WHERE employee_id = p_emp_id;

$$

SELECT parameter_func(2)


SELECT * from employees