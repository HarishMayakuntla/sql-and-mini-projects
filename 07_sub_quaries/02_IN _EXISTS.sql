-- ======================== Subquery with IN ===============================


SELECT name
FROM employees
WHERE department IN (
    SELECT department
    FROM departments
    WHERE manager = 'Ravi'
);

-- Meaning:

-- Find employees whose department is one of the departments managed by Ravi.


-- ========================== Subquery with EXISTS ========================

-- EXISTS checks whether the inner query returns at least one row.

SELECT name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE e.department = d.department
);

-- Meaning:

-- Show employees whose department exists in the departments table.

