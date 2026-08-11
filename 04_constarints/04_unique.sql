--=================================== UNIQUE Constraint in SQL ===============================

-- The UNIQUE constraint ensures that duplicate values are not allowed in a column.


CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);


--valid 

INSERT INTO employees VALUES (1, 'Harish', 'harish@gmail.com');
INSERT INTO employees VALUES (2, 'Rohit', 'rohit@gmail.com');

-- in valid

INSERT INTO employees VALUES (3, 'Anil', 'harish@gmail.com');


-- =========================== UNIQUE vs PRIMARY KEY =========================


| UNIQUE                                       | PRIMARY KEY               |
| -------------------------------------------- | ------------------------- |
| Prevents duplicate values                    | Prevents duplicate values |
| Can generally allow `NULL` depending on DBMS | Cannot contain `NULL`     |
| Multiple `UNIQUE` constraints allowed        | Only one primary key      |
| Used for values like email, phone            | Used to identify each row |



UNIQUE = No duplicate values

