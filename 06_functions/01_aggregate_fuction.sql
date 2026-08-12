-- ============================ Aggregate Functions ==================================

-- Work on multiple rows and return one result.
/*

| Function  | Use               |
| --------- | ----------------- |
| `COUNT()` | Count rows        |
| `SUM()`   | Add values        |
| `AVG()`   | Calculate average |
| `MAX()`   | Find maximum      |
| `MIN()`   | Find minimum      |

*/


SELECT AVG(salary)
FROM employees;


SELECT department, COUNT(*)
FROM employees
GROUP BY department;


SELECT SUM(salary) AS total_salary
FROM employees;



SELECT department,MAX(salary) AS Highest_salary
FROM employees
GROUP BY department;



SELECT MIN(age) AS younest_person
FROM employees;

