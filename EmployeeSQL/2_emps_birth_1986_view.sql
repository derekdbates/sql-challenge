-- View: public.employee_data_for_1986

-- DROP VIEW public.employee_data_for_1986;

-- CREATE OR REPLACE VIEW public.employee_data_for_1986
--  AS
 SELECT first_name,
    last_name,
    hire_date
   FROM employees
  WHERE hire_date >= '1986-01-01'::date AND hire_date < '1987-01-01'::date;

-- ALTER TABLE public.employee_data_for_1986
--     OWNER TO postgres;

