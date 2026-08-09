-- ============================= NOT NULL ==============================

-- NOT NULL is a constraint that ensures a column must have a value. It does not allow NULL.


CREATE TABLE employees (
    id INT,
    name VARCHAR(50) NOT NULL,
    salary INT
);


-- name cannot be NULL


-- valid 

INSERT INTO employees (id, name, salary)
VALUES (1, 'Harish', 50000);

--invalid

INSERT INTO employees (id, name, salary)
VALUES (2, NULL, 45000);


-- ============================ NOT NULL vs NULL ======================

| `NOT NULL`              | `NULL`                 |
| ----------------------- | ---------------------- |
| Value is required       | Value can be missing   |
| `NULL` not allowed      | `NULL` allowed         |
| Used for mandatory data | Used for optional data |



NOT NULL = "This column must have a value."