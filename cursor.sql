-- Author : Bade Om Ambadas
-- Date 24-05-2003
-- REFERENCES :https://www.tutorialspoint.com/mysql/mysql_cursor_declare_statement.htm

-- Declare the cursor using the DECLARE Statement.
-- Declare variables and conditions.
-- Open the declared cursor using the OPEN Statement.
-- Retrieve the desired records from a table using the FETCH Statement.
-- Finally close the cursor using the CLOSEstatement.

CREATE TABLE Reader1 (
  Rid INT PRIMARY KEY AUTO_INCREMENT,
  Rname VARCHAR(30),
  Rage INT,
  Rmobile VARCHAR(30),
  section VARCHAR(30)
);


DELIMITER //

CREATE PROCEDURE ExampleProc()
   BEGIN
      DECLARE done INT DEFAULT 0;
      DECLARE readerID INT;
      DECLARE readerName VARCHAR(30);
      DECLARE readerAge INT;
      DECLARE readerMobile VARCHAR(30);
      DECLARE readerSection VARCHAR(30);
      DECLARE cur CURSOR FOR SELECT * FROM Reader;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
      OPEN cur;
      label: LOOP
      FETCH cur INTO readerID, readerName, readerAge, readerMobile, readerSection;
      IF done = 1 THEN LEAVE label;
      END IF;
      INSERT INTO Reader1 (Rid, Rname, Rage, Rmobile, section) VALUES(readerID, readerName, readerAge, readerMobile, readerSection);
      END LOOP;
      CLOSE cur;
   END//
   
DELIMITER ;






/*

mysql> CREATE TABLE Reader1 (
    ->   Rid INT PRIMARY KEY AUTO_INCREMENT,
    ->   Rname VARCHAR(30),
    ->   Rage INT,
    ->   Rmobile VARCHAR(30),
    ->   section VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> select * from Reader1;
Empty set (0.01 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE ExampleProc()
    ->    BEGIN
    ->       DECLARE done INT DEFAULT 0;
    ->       DECLARE readerID INT;
    ->       DECLARE readerName VARCHAR(30);
    ->       DECLARE readerAge INT;
    ->       DECLARE readerMobile VARCHAR(30);
    ->       DECLARE readerSection VARCHAR(30);
    ->       DECLARE cur CURSOR FOR SELECT * FROM Reader;
    ->       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    ->       OPEN cur;
    ->       label: LOOP
    ->       FETCH cur INTO readerID, readerName, readerAge, readerMobile, readerSection;
    ->       IF done = 1 THEN LEAVE label;
    ->       END IF;
    ->       INSERT INTO Reader1 (Rid, Rname, Rage, Rmobile, section) VALUES(readerID, readerName, readerAge, readerMobile, readerSection);
    ->       END LOOP;
    ->       CLOSE cur;
    ->    END//
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql>
mysql> call ExampleProc();
Query OK, 0 rows affected (0.05 sec)

mysql> select * from Reader1;
+-----+-----------+------+------------+---------+
| Rid | Rname     | Rage | Rmobile    | section |
+-----+-----------+------+------------+---------+
|   3 | Radhesham |   33 | 7987654322 | NULL    |
|   4 | Radhesham |   33 | 7987654322 | NULL    |
|   6 | Radhesham |   33 | 7987654322 | NULL    |
|   7 | Radhesham |   33 | 7987654322 | NULL    |
|   9 | Radhesham |   33 | 7987654322 | NULL    |
|  10 | Radhesham |   33 | 7987654322 | NULL    |
|  12 | Radhesham |   33 | 7987654322 | NULL    |
|  13 | Radhesham |   33 | 7987654322 | NULL    |
|  15 | Radhesham |   33 | 7987654322 | NULL    |
|  16 | Radhesham |   33 | 7987654322 | NULL    |
|  18 | Radhesham |   33 | 7987654322 | NULL    |
|  19 | Radhesham |   33 | 7987654322 | NULL    |
|  21 | Radhesham |   33 | 7987654322 | NULL    |
|  22 | Radhesham |   33 | 7987654322 | NULL    |
|  24 | Radhesham |   33 | 7987654322 | NULL    |
|  25 | Radhesham |   33 | 7987654322 | NULL    |
|  27 | Radhesham |   33 | 7987654322 | NULL    |
|  28 | Radhesham |   33 | 7987654322 | NULL    |
|  30 | Radhesham |   33 | 7987654322 | NULL    |
|  31 | Radhesham |   33 | 7987654322 | NULL    |
|  44 | ra bade   |   19 | 9022157947 | NULL    |
|  45 | sai       |   10 | 1234       | NULL    |
|  46 | sai       |   17 | 1234       | NULL    |
+-----+-----------+------+------------+---------+
23 rows in set (0.00 sec)

mysql>

*/