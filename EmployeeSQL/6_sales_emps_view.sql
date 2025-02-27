-- View: public.sales_emps

-- DROP VIEW public.sales_emps;

-- CREATE OR REPLACE VIEW public.sales_emps
--  AS
 SELECT emp_no,
    last_name,
    first_name
   FROM employees
  WHERE (emp_no IN ( SELECT dept_emp.emp_no
           FROM dept_emp
          WHERE (dept_emp.dept_no::text IN ( SELECT departments.dept_no
                   FROM departments
                  WHERE departments.dept_name::text = 'Sales'::text))));

-- ALTER TABLE public.sales_emps
--     OWNER TO postgres;

