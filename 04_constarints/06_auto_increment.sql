-- ==================================== AUTO_INCREMENT in SQL ==================================

-- AUTO_INCREMENT is used to automatically generate a unique number for a column, usually an id.

-- It is commonly used with a PRIMARY KEY.


-- create table 

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- insert values withour IDs

INSERT INTO employees (name, salary)
VALUES ('Harish', 30000);

INSERT INTO employees (name, salary)
VALUES ('Rohit', 35000);

INSERT INTO employees (name, salary)
VALUES ('Anil', 40000);


--result :aotomatical genarates the Ids 

| id | name   | salary |
| -: | ------ | -----: |
|  1 | Harish |  30000 |
|  2 | Rohit  |  35000 |
|  3 | Anil   |  40000 |



AUTO_INCREMENT = SQL automatically gives the next ID.

AUTO_INCREMENT = generates the next number automatically

PRIMARY KEY = makes the ID unique and not NULL
