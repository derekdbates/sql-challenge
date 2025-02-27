-- View: public.last_name_counts

-- DROP VIEW public.last_name_counts;

-- CREATE OR REPLACE VIEW public.last_name_counts
--  AS
 SELECT last_name,
    count(last_name) AS count
   FROM employees
  GROUP BY last_name
  ORDER BY last_name DESC;

-- ALTER TABLE public.last_name_counts
--     OWNER TO postgres;

