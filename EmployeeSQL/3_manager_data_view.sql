-- View: public.manager_data

-- DROP VIEW public.manager_data;

-- CREATE OR REPLACE VIEW public.manager_data
--  AS
 SELECT dept_manager.dept_no,
    departments.dept_name,
    dept_manager.emp_no,
    employees.last_name,
    employees.first_name
   FROM dept_manager
     JOIN employees ON dept_manager.emp_no = employees.emp_no
     JOIN departments ON dept_manager.dept_no::text = departments.dept_no::text;

-- ALTER TABLE public.manager_data
--     OWNER TO postgres;

