-- ============================== FULL JOIN ==================================

-- FULL JOIN returns everything from both tables.

-- create table

CREATE TABLE employees(
id int PRIMARY KEY ,
name VARCHAR(30),
dept_id int
);


--insert into

insert into employees
VALUES
( 1,'Harish',10),
(2,'Rohit',20), 
(3,'Anil',30), 
(4,'Ramesh',40) 


--- result

| id | name   | dept_id |
| -: | ------ | ------: |
|  1 | Harish |      10 |
|  2 | Rohit  |      20 |
|  3 | Anil   |      30 |
|  4 | Ramesh |      40 |



-- create another table

CREATE TABLE departments(
dept_id int ,
department varchar(20)
);

-- insert into

insert into deparrtments
VALUES
(10,'IT'),
(20,'HR'),
(30,'Sales'),
(50,Finance)




--result 

| dept_id | department |
| ------: | ---------- |
|      10 | IT         |
|      20 | HR         |
|      30 | Sales      |
|      50 | Finance    |




--Quary 


SELECT e.id, e.name, e.dept_id, d.department
FROM employees e
FULL OUTER JOIN departments d
ON e.dept_id = d.dept_id;



-- result

|   id | name   | dept_id | department |
| ---: | ------ | ------: | ---------- |
|    1 | Harish |      10 | IT         |
|    2 | Rohit  |      20 | HR         |
|    3 | Anil   |      30 | Sales      |
|    4 | Ramesh |      40 | NULL       |
| NULL | NULL   |      50 | Finance    |


FULL JOIN = Everything from LEFT + Everything from RIGHT


-- UNION  = right+left joins

SELECT e.id, e.name, e.dept_id, d.department
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT e.id, e.name, e.dept_id, d.department
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


--REsult

|   id | name   | dept_id | department |
| ---: | ------ | ------: | ---------- |
|    1 | Harish |      10 | IT         |
|    2 | Rohit  |      20 | HR         |
|    3 | Anil   |      30 | Sales      |
|    4 | Ramesh |      40 | NULL       |
| NULL | NULL   |      50 | Finance    |






 