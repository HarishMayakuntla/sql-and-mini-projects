-- ===================== Subqueries in SQL ===============================-- 

-- A subquery is a query written inside another SQL query.


-- Basic structure
/*
SELECT column
FROM table
WHERE column = (
    SELECT column
    FROM table
    WHERE condition
);

*/


--          Types of Subqueries
--=======================================--

-- 1. Single-row subquery

-- Returns one value.

-- Usually used with:
/*
=
>
<
>=
<=

*/

SELECT name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);





-- 2. Multiple-row subquery

-- Returns multiple values.

-- Usually used with:

SELECT name
FROM employees
WHERE department IN (
    SELECT department
    FROM departments
    WHERE location = 'Hyderabad'
);



