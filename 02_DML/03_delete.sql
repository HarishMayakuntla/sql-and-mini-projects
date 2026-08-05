--## ========================= DELETE in SQL (DML Command) ==============================

-- ## DELETE is a DML (Data Manipulation Language) command used to remove one or more rows from a table.

-- Syntax :
--
--       DELETE FROM table_name
--       WHERE condition;


-- Delete all rowes --------------

DELETE FROM table_name ;

-- Delete Specific row ------------

DELETE FROM table_name
WHERE column ;



-- create table ==================

CREATE TABLE students (
    id INT,
    name VARCHAR(30),
    marks INT
);


-- insert data =====================

INSERT INTO students
VALUES
(1, 'Harish', 95),
(2, 'Rohit', 88),
(3, 'Anil', 91),
(4, 'Priya', 85);


-- ## ----------- DELETE SPECIFIC ROW -----------------

DELETE FROM students 
WHERE id = 2 ;

/*  output :

| id | name   | marks |
| -- | ------ | ----- |
|  1 | Harish |    95 |
|  3 | Anil   |    91 |
|  4 | Priya  |    85 |


*/


-- ============== DELETE ALL ROWES =========================

DELETE FROM students;

-- all rowes are remove only table structure remains




/*  ==============  DELETE vs TRUNCATE vs DROP  =====================

| Feature                    | DELETE | TRUNCATE | DROP  |
| -------------------------- | ------ | -------- | ----- |
| Removes data               |  Yes   | Yes      | Yes   |
| Removes table structure    |  No    | No       | Yes   |
| `WHERE` clause             |  Yes   | No       | No    |
| Type                       | DML    | DDL      | DDL   |
| Table exists after command | Yes    | Yes      | No    |



*/