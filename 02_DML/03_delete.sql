-- ## ============================ INSERT IN SQL ====================

-- # INSERT is a DML (Data Manipulation Language) command

--#  used to add new records (rows) into a table

-- Syntax : insert data into all columns

--     INSERT INTO table_name 
--     VALUES (col1,co2, ....);


--  Syntax : insert the data into  specific column

--      INSERT INTO table_name (col1,col2)
--      VALUES (col1,col2)


-- Create atable 

CREATE TABLE students(

id int primary key,
name varchar(30) ,
marks int 

);




-- ========= INSERT DATA INTO TABLE  == === ========


INSERT INTO  students 
VALUES (1,'Harish',75);


o/p :

| id | name   | marks |
| -: | ------ | ----: |
|  1 | Harish |    75 |


-- ## =================== INSERT INTO MUTIPLE COLUMNS ======================

INSERT INTO  students 
VALUES 
(2, 'Rohit', 88),
(3, 'Anil', 91),
(4, 'Priya', 85);

O/P :


| id | name   | marks |
| -: | ------ | ----: |
|  1 | Harish |    75 |
|  2 | Rohit  |    88 |
|  3 | Anil   |    91 |
|  4 | Priya  |    85 |



-- =================== INSERT INTO SPECIFIC COLUMNS =====================

INSERT INTO students (id,name)
VALUES (1,'ramu') ;

