-------------------------------------------. INNER JOIN---------------------------------------
SELECT back_reader.Rname,  Reader.Rage FROM Reader
INNER JOIN back_reader
ON Reader.Rname = back_reader.Rname;

-- The INNER JOIN keyword selects all rows from both the tables as long as the condition is satisfied.
--  This keyword will create the result-set by combining all rows from both the tables where 
-- the condition satisfies i.e value of the common field will be the same. 

-- Syntax: 

-- SELECT table1.column1,table1.column2,table2.column1,....
-- FROM table1 
-- INNER JOIN table2
-- ON table1.matching_column = table2.matching_column;


-- ------------------------------LEFT JOIN-------------------------------------------------------------------
-- SELECT table1.column1,table1.column2,table2.column1,....
-- FROM table1 
-- LEFT JOIN table2
-- ON table1.matching_column = table2.matching_column;


-- table1: First table.
-- table2: Second table
-- matching_column: Column common to both the tables.

SELECT Reader.Rname,Reader.Rmobile ,back_reader.Rage 
FROM Reader
LEFT JOIN back_reader 
ON back_reader.Rname = Reader.Rname;


-- This join returns all the rows of the table on the left side of the join and matches rows for the table on the right side of the join. 
-- For the rows for which there is no matching row on the right side, the result-set will contain null. LEFT JOIN is also known as LEFT OUTER JOIN.


----------------------------------------RIGHT JOIN-----------------------------------------------------------------

-- syntax
-- SELECT table1.column1,table1.column2,table2.column1,....
-- FROM table1 
-- RIGHT JOIN table2
-- ON table1.matching_column = table2.matching_column;


-- table1: First table.
-- table2: Second table
-- matching_column: Column common to both the tables.

SELECT Reader.Rname,Reader.Rmobile ,back_reader.Rage 
FROM Reader
RIGHT JOIN back_reader 
ON back_reader.Rname = Reader.Rname;

-- RIGHT JOIN is similar to LEFT JOIN. 
-- This join returns all the rows of the table on the right side of the join and matching rows for the table on the left side of the join.
--  For the rows for which there is no matching row on the left side, the result-set will contain null. RIGHT JOIN is also known as RIGHT OUTER JOIN. 

------------------------------------FULL JOIN----------------------------------------------------------------
-- FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN.
--  The result-set will contain all the rows from both tables. 
--  For the rows for which there is no matching, the result-set will contain NULL values.

-- SELECT table1.column1,table1.column2,table2.column1,....
-- FROM table1 
-- FULL JOIN table2
-- ON table1.matching_column = table2.matching_column;


-- table1: First table.
-- table2: Second table
-- matching_column: Column common to both the tables. 
use BMS;
SELECT Reader.Rage,Reader.Rmobile ,back_reader.Rage 
FROM Reader
FULL JOIN back_reader 
ON back_reader.Rname = Reader.Rname;



---------------------------------------------- Natural join------------------------------------------------------------

-- Natural join can join tables based on the common columns in the tables being joined. A natural join returns all rows by matching values in common columns having same name and data type of columns and that column should be present in both tables.
-- Both table must have at list one common column with same column name and same data type.
-- The two table are joined using Cross join.
-- DBMS will look for a common column with same name and data type Tuples having exactly same values in common columns are kept in result.











-- REFERENCES 
-- https://www.geeksforgeeks.org/sql-join-set-1-inner-left-right-and-full-joins/
-- Author 
-- Name OM Bade