/*

### ========== ========== Common Clauses with SELECT ============= ============

SELECT – Choose columns
FROM – Specify the table
WHERE – Filter rows
ORDER BY – Sort results
GROUP BY – Group rows
HAVING – Filter groups
LIMIT – Limit the number of rows

*/


-- SELECT ========================

-- Chooses the columns to display.

SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary

-- FROM ==========================

-- Specifies the table 

FROM employees

-- WHERE ==========================

-- Filters individual rows before grouping

WHERE salary >= 45000

-- GROUP BY =======================

-- Groups rows by department.

GROUP BY department

-- HAVING ========================

-- Filters groups after grouping.

HAVING COUNT(*) >= 2 

-- ORDER BY  ======================

-- Sorts the result.

-- Sorts by average salary from highest to lowest.

ORDER BY avg_salary DESC 


-- LIMIT ============================

-- Returns only the first 2 rows

-- Since only one department matches, one row is returned.

LIMIT 2 




-- Query using all clauses ===============================

SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employees
WHERE salary >= 45000
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY avg_salary DESC
LIMIT 2;