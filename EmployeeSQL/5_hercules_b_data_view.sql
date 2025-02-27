-- View: public.hercules_b_data

-- DROP VIEW public.hercules_b_data;

-- CREATE OR REPLACE VIEW public.hercules_b_data
--  AS
 SELECT first_name,
    last_name,
    sex
   FROM employees
  WHERE first_name::text = 'Hercules'::text AND last_name::text ~~ 'B%'::text;

-- ALTER TABLE public.hercules_b_data
--     OWNER TO postgres;

