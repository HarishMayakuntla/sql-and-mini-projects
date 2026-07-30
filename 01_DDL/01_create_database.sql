
-- ============================= create database ====================

-- To create a database in SQL (MySQL), use the CREATE DATABASE statement

-- SYNTAX:

-- CREATE DATABASE database_name;


CREATE DATABASE employee_db ;


-- ==================== Check all databases ========================

--  check the existing databases

-- Syntax:

-- SHOW DATABASES;

-- example;

    SHOW databases



-- ======================= Use the database =====================

-- i need to use perticular database

-- Syntax:

-- USE database;

-- example 
   
     USE employee_db;



-- ============================ Verify the selected database ==================

-- we need to select the current database


SELECT DATABASE();





-- ## ======================= all in one ==================


-- Create a database
CREATE DATABASE employee_db;

-- View all databases
SHOW DATABASES;

-- Select the database
USE employee_db ;

-- Check the current database
SELECT DATABASE();



--## output :

Database changed

+------------+
| DATABASE() |
+------------+
| college    |
+------------+

