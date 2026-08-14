-- ================================ Correlated subquery  =================================

Here, the inner query depends on the outer query.

Example:

SELECT name, salary, department
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

-- Meaning:

-- Find employees who earn more than the average salary of their own department.