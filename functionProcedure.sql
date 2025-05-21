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


-- procedure ->> there is no return types

CREATE Procedure var_procedure(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    --declare varibale
    DECLARE
    test_var INT;
  BEGIN
    SELECT employee_id INTO test_var FROM employees
    where employee_id = test_var;

    DELETE FROM employees WHERE employee_id = p_emp_id;


    -- alert
    RAISE NOTICE 'employee deleted'
  END

$$

CALL var_procedure(10)

SELECT * from employees