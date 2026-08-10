-- ============================ DEFAULT Constraint in SQL ==================================

-- DEFAULT is a constraint that automatically assigns a value to a column when you don't provide a value during INSERT.


-- Syntax

-- column_name datatype DEFAULT value

-- create a table
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50) DEFAULT 'Hyderabad'
);

-- insert into city
INSERT INTO employees (id, name)
VALUES (1, 'Harish');

-- check table
SELECT * FROM employees;

-- result 

| id | name   | city      |
| -: | ------ | --------- |
|  1 | Harish | Hyderabad |


DROP in SQL

DROP is a DDL (Data Definition Language) command used to permanently delete a database object, such as a table, database, view, or index.

Syntax
DROP TABLE table_name;
Example

Create a table:

CREATE TABLE students (
    id INT,
    name VARCHAR(30),
    marks INT
);

Delete the table:

DROP TABLE students;

Result:

✅ All data is deleted.
✅ The table structure is deleted.
❌ The table no longer exists.

If you try:

SELECT * FROM students;

You will get an error because the students table has been removed.

DROP vs TRUNCATE vs DELETE
Feature	DROP	TRUNCATE	DELETE
Removes data	✅ Yes	✅ Yes	✅ Yes
Removes table structure	✅ Yes	❌ No	❌ No
WHERE clause	❌ No	❌ No	✅ Yes
Type	DDL	DDL	DML
Table exists after command	❌ No	✅ Yes	✅ Yes
Other Examples
Drop a database
DROP DATABASE college;
Drop a view
DROP VIEW student_view;
Interview Questions

1. What is DROP?

A DDL command that permanently removes a database object.

2. Does DROP delete the table structure?

Yes.

3. Can you recover a dropped table?

Generally no, unless you have a backup or your DBMS provides recovery features.

4. Is DROP a DDL or DML command?

DDL
Quick Memory Tip
DELETE → Remove rows (can use WHERE).
TRUNCATE → Remove all rows, keep the table.
DROP → Remove the entire table, including its data and structure.
Friday 11:09 AM
constraints

SQL Constraints

Constraints are rules applied to table columns to ensure the accuracy, validity, and integrity of the data.

Types of Constraints
1. NOT NULL

Ensures that a column cannot have NULL values.

CREATE TABLE students (
    id INT,
    name VARCHAR(50) NOT NULL
);

✅ Valid

INSERT INTO students VALUES (1, 'Harish');

❌ Invalid

INSERT INTO students VALUES (2, NULL);
2. UNIQUE

Ensures that all values in a column are unique.

CREATE TABLE students (
    id INT,
    email VARCHAR(100) UNIQUE
);

✅ Valid

INSERT INTO students VALUES (1, 'harish@gmail.com');
INSERT INTO students VALUES (2, 'rohit@gmail.com');

❌ Invalid

INSERT INTO students VALUES (3, 'harish@gmail.com');
3. PRIMARY KEY

A column (or set of columns) that uniquely identifies each row.

Cannot contain NULL.
Must be unique.
Only one primary key per table.
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
4. FOREIGN KEY

Creates a relationship between two tables.

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
5. CHECK

Ensures that values satisfy a condition.

CREATE TABLE students (
    id INT,
    age INT CHECK (age >= 18)
);

✅ Valid

INSERT INTO students VALUES (1, 20);

❌ Invalid

INSERT INTO students VALUES (2, 16);
6. DEFAULT

Assigns a default value if none is provided.

CREATE TABLE employees (
    id INT,
    country VARCHAR(30) DEFAULT 'India'
);
INSERT INTO employees (id) VALUES (1);

Result:

id	country
1	India
7. AUTO_INCREMENT (MySQL)

Automatically generates sequential numbers.

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO students (name)
VALUES ('Harish');

Result:

id	name
1	Harish
Complete Example
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    country VARCHAR(30) DEFAULT 'India'
);
Interview Questions
1. What are constraints?

Rules that enforce data integrity and validity in a database.

2. What is the difference between PRIMARY KEY and UNIQUE?
PRIMARY KEY	UNIQUE
Cannot be NULL	Can allow NULL (DBMS-dependent)
Only one per table	Multiple allowed
Must be unique	Must be unique
3. Difference between PRIMARY KEY and FOREIGN KEY
PRIMARY KEY	FOREIGN KEY
Uniquely identifies a row	Refers to a primary key in another table
No NULL values	Can be NULL unless restricted
One per table	Multiple allowed
4. What is the purpose of CHECK?

It restricts values based on a condition.

5. What does DEFAULT do?

It assigns a value automatically when no value is provided.

Quick Memory Trick
NOT NULL → No empty values
UNIQUE → No duplicates
PRIMARY KEY → Unique + Not Null
FOREIGN KEY → Links two tables
CHECK → Applies a condition
DEFAULT → Automatic value
AUTO_INCREMENT → Automatic numbering
Today 11:45 AM
default

DEFAULT Constraint in SQL

DEFAULT is a constraint that automatically assigns a value to a column when you don't provide a value during INSERT.

Syntax
column_name datatype DEFAULT value
Example
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50) DEFAULT 'Hyderabad'
);

Now insert without city:

INSERT INTO employees (id, name)
VALUES (1, 'Harish');

Check the table:

SELECT * FROM employees;

Result:

id	name	city
1	Harish	Hyderabad

Because we didn't provide city, SQL automatically used the default value.

Another example
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT DEFAULT 0
);
INSERT INTO students (id, name)
VALUES (1, 'Harish');




-- 

Important point

DEFAULT is used when the column is omitted from the INSERT.

the default normally does not replace the explicit NULL

DEFAULT = "If you don't give a value, I'll give one automatically."