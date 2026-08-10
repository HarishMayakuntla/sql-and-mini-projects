/* 

======================= Primary Key in SQL ===================

A Primary Key is a column (or combination of columns) that uniquely identifies each row in a table.

Main rules
1.Must be unique — duplicate values are not allowed.
2.Cannot be NULL.
3.A table can have only one PRIMARY KEY.
4. It can consist of one or multiple columns.

*/


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);


INSERT INTO employees VALUES
(1, 'Harish', 50000),
(2, 'Rohit', 60000),
(3, 'Anil', 45000);



-- output

| emp_id | name   | salary |
| -----: | ------ | -----: |
|      1 | Harish |  50000 |
|      2 | Rohit  |  60000 |
|      3 | Anil   |  45000 |




-- ===================== Primary Key vs Unique ==========================

| PRIMARY KEY         | UNIQUE                               |
| ------------------- | ------------------------------------ |
| Unique values       | Unique values                        |
| Cannot be NULL      | NULL handling depends on DBMS        |
| Only one per table  | Multiple UNIQUE constraints possible |
| Identifies each row | Prevents duplicate values            |
