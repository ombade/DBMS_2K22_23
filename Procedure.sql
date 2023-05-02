-- creating the simple PROCEDURE
DELIMITER //
create Procedure Reader_number()
BEGIN
select Rid ,Rname
from reader ;
end //
DELIMITER ;

-- call the above PROCEDURE
CALL Reader_number();

-- creating the Parameterized Procedure

DELIMITER //
create Procedure reader_age(name varchar(30))
BEGIN
select * from reader where Rname = name;
End //
DELIMITER ;

-- Multiple Parameterized Procedures
delimiter //
create PROCEDURE book_info(b_name varchar(30),price int)
BEGIN
select * from Books where bname = b_name AND price =Price;
end //
delimiter ;

call book_info('wings of fire',200);

-- to drop the PROCEDURE
DROP PROCEDURE book_info;