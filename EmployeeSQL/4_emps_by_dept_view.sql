-- View: public.employee_by_dept

-- DROP VIEW public.employee_by_dept;

-- CREATE OR REPLACE VIEW public.employee_by_dept
--  AS
 SELECT dept_emp.dept_no,
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
   FROM employees
     JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
     JOIN departments ON dept_emp.dept_no::text = departments.dept_no::text;

-- ALTER TABLE public.employee_by_dept
--     OWNER TO postgres;

