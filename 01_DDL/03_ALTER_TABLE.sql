--## =========================== ALTER TABLE =====================

/*

Used to modify an existing table

it is use the change column ,rename ,add colume to the table,modify the exist colume


*/

--##  ====================ADD COLUME ===================

-- add new column to the the eexisting table

/*

syntax :
 
        ALTER TABLE table_name 
        ADD column_name data_type ;

*/

-- ##=============== ADD SINGLE COLUMN =========

ALTER TABLE employees
ADD salary INT;


-- ## ================= ADD MULTIPLE COLUMNS ===============

ALTER TABLE employee
ADD age INT,
ADD city VARCHAR(30);



-- # WE can  ADD constaints also we will seee on later


-- ## ===================== RENAME COLUMN =====================

-- i need  to change existing  column name 

/*

 ### BEFORE 8.0 VERSTION 

 syntax :

        ALTER TABLE table_name
        CHANGE COLUMN old_column_name new_column_name data_type ;



### AFTER 8.0 VERSTION

syntax :

      ALTER TABLE table_name
      RENAME COLUMN old_column_name TO new_column_name ;


*/


-- ## old verstion 

ALTER TABLE employee
CHANGE COLUMN salary employee_salary DECIMAL(10,2);


-- ## NEW VESTION 

ALTER TABLE employee
RENAME COLUMN salary TO employee_salary;


--## =================== Modify the colume datatype ,descrption =========================

-- Change the datatype or properties of a column

/*

Syntax :

       ALTER TABLE table_name
       MODIFY column_name new_datatype;


*/

--BEFORE :


CREATE TABLE student(
    id INT,
    name VARCHAR(20),
    age INT
);


-- AFTER  I CHANGE int TO float 


ALTER TABLE student
MODIFY age FLOAT;




--##  ============================= TABLE RENAME ====================

-- we need change to the table name

/*  

-- OLD VERSTION 

Syntax :
 

        ALTER TABLE  table_name
        RENAME TO new_table_name



-- NEW VERSTION 

Syntax :


     RENAME TABLE table_name  TO new_table_name

*/



-- ## old trend 

ALTER TABLE employee 
RENAME TO Employees


--# new trend 

RENAME TABLE employee TO Employees