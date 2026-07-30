--## ======================== Drop in SQL ==========================

--## DROP is a DDL (Data Definition Language) command 

--## used to permanently delete a database object, such as a table, database, view, or index

-- Syntax :

--        DROP DATABASE database_name ;  use delete database

--         DROP  TABLE  table_name ;     use for delete table


-- Example :

-- create Data base

CREATE DATABASE student_db ;


use student_db


CREATE TABLE students(

id int primary key auto_increment ,

name varchar(30) not null,

marks int 


);


--=============== Delete the table ==============


Drop TABLE students

--  all data is deleted permintly
-- table structre is delested


-- ================ Delete DATABASE ===============

DROP DATABASE student_db

-- it is delete entaire database 

