-- View: public.employees_with_salary

-- DROP VIEW public.employees_with_salary;

-- CREATE OR REPLACE VIEW public.employees_with_salary
--  AS
 SELECT employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary
   FROM employees
     JOIN salaries ON employees.emp_no = salaries.emp_no;

-- ALTER TABLE public.employees_with_salary
--     OWNER TO postgres;

