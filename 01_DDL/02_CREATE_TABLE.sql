-- ## ========================== CREATE TABLE ========================

/* 

CREATE TABLE is a DDL (Data Definition Language) command

It is used to create a new table in a database.

Think of a table like an Excel sheet


syntax :


CREATE TABLE table_name (
    column1 datatype declaration,
    column2 datatype declaration,
    column3 datatype declaration
);


*/


   
-- example :


CREATE TABLE employee(
    id INT,
    name VARCHAR(50),
    salary FLOAT,
    department VARCHAR(30),
    joining_date DATE
);


-- later  we discuss about the constraints 


/*  


step_1  : 
        create table  table_name

step_2 :
       create the column and it datatype like int ,float 
       and some constaints 


step_3 :
    the  step_2  in between the (  )

    