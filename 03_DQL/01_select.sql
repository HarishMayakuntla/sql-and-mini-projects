-- ## ================================ DQL (Data Query Language) – SELECT

-- ## DQL (Data Query Language) is used to retrieve data from a database.

-- The main DQL command is:

       select


--Syntax :

--     SELECT column_name
--     FROM table_name;


-- retrive all columns

--     SELECT * FROM table_name;




-- =============== Display all columns ============

SELECT * FROM students;

/*

| id | name   | age | marks |
| -- | ------ | --- | ----: |
| 1  | Harish | 21  |    90 |
| 2  | Rohit  | 22  |    85 |
| 3  | Anil   | 20  |    78 |
*/



-- ======================= Display specific columns ===========================

SELECT name, marks
FROM students;

/*

| name   | marks |
| ------ | ----: |
| Harish |    90 |
| Rohit  |    85 |
| Anil   |    78 |

*/





