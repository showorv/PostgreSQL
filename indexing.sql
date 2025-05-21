-- indexing is a way to improve the speed of data retrieval operations on a table

SELECT * from employees

EXPLAIN ANALYZE
select * from employees
WHERE employee_name = 'John Doe';

CREATE INDEX idx_emp_name
on employees(employee_name); -- speed up and faster in execution time

SHOW data_directory;

-- CREATE INDEX idx_emp_name
-- on employees USING HASH (employee_name);