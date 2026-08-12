-- ============================ NULL Functions ===============================

-- NULL means missing/unknown value.

--COALESCE()  ========

-- Returns the first non-NULL value

SELECT COALESCE(salary, 0)
FROM employees;



SELECT COALESCE(phone, 'Not Available')
FROM employees;




-- Conditional Function — CASE  =======================

-- CASE is extremely important.

-- It works like if-else in programming.


SELECT name,
       salary,
       CASE
           WHEN salary >= 60000 THEN 'High'
           WHEN salary >= 40000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employees;




/*

| name   | salary | salary_level |
| ------ | -----: | ------------ |
| Harish |  50000 | Medium       |
| Rohit  |  60000 | High         |
| Anil   |  30000 | Low          |

*/

