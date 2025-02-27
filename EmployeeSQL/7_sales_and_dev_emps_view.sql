-- View: public.sales_dev_emps

-- DROP VIEW public.sales_dev_emps;

-- CREATE OR REPLACE VIEW public.sales_dev_emps
--  AS
 SELECT emp_no,
    last_name,
    first_name
   FROM employees
  WHERE (emp_no IN ( SELECT dept_emp.emp_no
           FROM dept_emp
          WHERE (dept_emp.dept_no::text IN ( SELECT departments.dept_no
                   FROM departments
                  WHERE departments.dept_name::text = 'Sales'::text OR departments.dept_name::text = 'Development'::text))));

-- ALTER TABLE public.sales_dev_emps
--     OWNER TO postgres;

