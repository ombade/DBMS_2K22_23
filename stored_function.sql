-- Author Bade Om Ambadas 
-- date : 24-05-2023
-- REFERENCES https://www.javatpoint.com/mysql-stored-function#:~:text=A%20stored%20function%20in%20MySQL,a%20CREATE%20ROUTINE%20database%20privilege.
-- syntax for the function 

-- DELIMITER $$  
   
-- CREATE FUNCTION fun_name(fun_parameter(s))  
-- RETURNS datatype  
-- [NOT] {Characteristics}  
-- fun_body;  

CREATE FUNCTION reader_status(  
    age int  
)   
RETURNS VARCHAR(20)  
DETERMINISTIC  
BEGIN  
    DECLARE reader_status VARCHAR(20);  
    IF age > 10 THEN  
        SET reader_status = 'kid ';  
    ELSEIF (age <= 12 AND   
            age >= 21) THEN  
        SET reader_status = 'young reader';  
    ELSEIF age < 30 THEN  
        SET reader_status = 'senior';  
    END IF;  
    -- return the customer occupation  
    RETURN (reader_status);  
END$$  
DELIMITER;  







/*

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'END$$
DELIMITER' at line 1
mysql>
mysql> DELIMITER $$
mysql> CREATE FUNCTION reader_status(age INT)
    -> RETURNS VARCHAR(20)
    -> DETERMINISTIC
    -> BEGIN
    ->     DECLARE reader_status VARCHAR(20);
    ->     IF age > 10 THEN
    ->         SET reader_status = 'kid';
    ->     ELSEIF age >= 13 AND age <= 20 THEN
    ->         SET reader_status = 'young reader';
    ->     ELSEIF age < 30 THEN
    ->         SET reader_status = 'senior';
    ->     END IF;
    ->     -- return the reader status
    ->     RETURN reader_status;
    -> END$$
Query OK, 0 rows affected (0.07 sec)

mysql> DELIMITER ;
mysql>
mysql> desc Reader;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| Rid     | int         | NO   | PRI | NULL    | auto_increment |
| Rname   | varchar(30) | YES  |     | NULL    |                |
| Rage    | int         | YES  |     | NULL    |                |
| Rmobile | varchar(30) | YES  |     | NULL    |                |
| section | varchar(30) | YES  |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
5 rows in set (0.02 sec)

mysql> select Rid , Rname , Rage ,reader_status(Rage) from Reader;
+-----+-----------+------+---------------------+
| Rid | Rname     | Rage | reader_status(Rage) |
+-----+-----------+------+---------------------+
|   3 | Radhesham |   33 | kid                 |
|   4 | Radhesham |   33 | kid                 |
|   6 | Radhesham |   33 | kid                 |
|   7 | Radhesham |   33 | kid                 |
|   9 | Radhesham |   33 | kid                 |
|  10 | Radhesham |   33 | kid                 |
|  12 | Radhesham |   33 | kid                 |
|  13 | Radhesham |   33 | kid                 |
|  15 | Radhesham |   33 | kid                 |
|  16 | Radhesham |   33 | kid                 |
|  18 | Radhesham |   33 | kid                 |
|  19 | Radhesham |   33 | kid                 |
|  21 | Radhesham |   33 | kid                 |
|  22 | Radhesham |   33 | kid                 |
|  24 | Radhesham |   33 | kid                 |
|  25 | Radhesham |   33 | kid                 |
|  27 | Radhesham |   33 | kid                 |
|  28 | Radhesham |   33 | kid                 |
|  30 | Radhesham |   33 | kid                 |
|  31 | Radhesham |   33 | kid                 |
|  44 | om bade   |   19 | kid                 |
+-----+-----------+------+---------------------+
21 rows in set (0.03 sec)

mysql> insert into reader (Rname ,Rage , Rmobile ) values ('sai',10,'1234');
ERROR 1062 (23000): Duplicate entry '0' for key 'back_reader.PRIMARY'
mysql> insert into reader (Rname ,Rage , Rmobile ) values ('sai',10,'1234');
ERROR 1062 (23000): Duplicate entry '0' for key 'back_reader.PRIMARY'
mysql> drop trigger ins_reader;
Query OK, 0 rows affected (0.02 sec)

mysql> insert into reader (Rname ,Rage , Rmobile ) values ('sai',10,'1234');
Query OK, 1 row affected (0.01 sec)

mysql> insert into reader (Rname ,Rage , Rmobile ) values ('sai',17,'1234');
Query OK, 1 row affected (0.01 sec)

mysql> select Rid , Rname , Rage ,reader_status(Rage) from Reader;
+-----+-----------+------+---------------------+
| Rid | Rname     | Rage | reader_status(Rage) |
+-----+-----------+------+---------------------+
|   3 | Radhesham |   33 | kid                 |
|   4 | Radhesham |   33 | kid                 |
|   6 | Radhesham |   33 | kid                 |
|   7 | Radhesham |   33 | kid                 |
|   9 | Radhesham |   33 | kid                 |
|  10 | Radhesham |   33 | kid                 |
|  12 | Radhesham |   33 | kid                 |
|  13 | Radhesham |   33 | kid                 |
|  15 | Radhesham |   33 | kid                 |
|  16 | Radhesham |   33 | kid                 |
|  18 | Radhesham |   33 | kid                 |
|  19 | Radhesham |   33 | kid                 |
|  21 | Radhesham |   33 | kid                 |
|  22 | Radhesham |   33 | kid                 |
|  24 | Radhesham |   33 | kid                 |
|  25 | Radhesham |   33 | kid                 |
|  27 | Radhesham |   33 | kid                 |
|  28 | Radhesham |   33 | kid                 |
|  30 | Radhesham |   33 | kid                 |
|  31 | Radhesham |   33 | kid                 |
|  44 | radhe rad |   19 | kid                 |
|  45 | sai       |   10 | senior              |
|  46 | sai       |   17 | kid                 |
+-----+-----------+------+---------------------+
23 rows in set (0.00 sec)

mysql>
*/