-- ========================== String Functions ============================

-- String functions work with text.

--Work on one row at a time and return one result for each row

/*

UPPER() = Converts text to uppercase.
LOWER() = Converts text to lowercase.
LENGTH() = Returns the number of characters.
CONCAT() = Joins strings together
SUBSTRING() = Extracts part of a string.
TRIM()  =  Removes spaces from the beginning and end.


*/

SELECT UPPER(name)
FROM employees;


SELECT LOWER('HARISH')
FROM employees;

SELECT LENGTH('Harish');


SELECT CONCAT('Harish', ' Kumar');


SELECT SUBSTRING('Harish', 1, 3);


SELECT TRIM('   Harish   ');