
-- ============================= FOREIGN KEY ========================

-- Creates a relationship between two tables


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);



----  ============ PRIMARY KEY vs FOREIGN KEY =================


| PRIMARY KEY               | FOREIGN KEY                              |
| ------------------------- | ---------------------------------------- |
| Uniquely identifies a row | Refers to a primary key in another table |
| No `NULL` values          | Can be `NULL` unless restricted          |
| One per table             | Multiple allowed                         |
