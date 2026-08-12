-- ===================================== Date Functions  ======================================

-- Date functions depend somewhat on the database you're using.



/*

CURRENT_DATE
CURRENT_TIMESTAMP
YEAR()
MONTH()
DAY()

*/


SELECT CURRENT_DATE;


SELECT CURRENT_TIMESTAMP;


SELECT YEAR(hire_date)
FROM employees;


SELECT MONTH('2026-08-12');



SELECT DAY('2026-08-12');