--======================== SQL CHECK Constraint ==============================

-- CHECK is a constraint used to make sure that data inserted into a column satisfies a specific condition.

-- Syntax :

-- CHECK (condition)



-- create table 


CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT CHECK (age >= 18)
);



-- insert into data

-- valid data

INSERT INTO students VALUES (1, 'Harish', 22);

-- invalid data 

INSERT INTO students VALUES (2, 'Rohit', 16);