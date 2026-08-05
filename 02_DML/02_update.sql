-- ## ========================  UPDATE in SQL (DML Command) =======================

-- ##  UPDATE is a DML (Data Manipulation Language) command used to modify existing records in a table

-- Syntax :
--    
--      UPDATE table_name
--      SET column1 = value1, column2 = value2
--      WHERE condition;


-- create table
CREATE TABLE student (

id int PRIMARY key ,
name varchar(30),
marks int 


);


-- insert data ----

INSERT INTO student
VALUES
(1,'hari',70),
(2,'ramesh',80);


--## update the data ----------------------

UPDATE student 
SET marks=98
where id =1;

/*  out put :

| id | name   | marks |
| -: | ------ | ----: |
|  1 | Harish |    98 |
|  2 | Rohit  |    88 |
|  3 | Anil   |    91 |

*/

-- without use where cluse it can modify entire table

UPDATE student 
SET marks=98 ;


/*  out put :

| id | name   | marks |
| -: | ------ | ----: |
|  1 | Harish |    98 |
|  2 | Rohit  |    98 |
|  3 | Anil   |    98 |

*/