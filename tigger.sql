

-- TRIGGER for the insert  the database 
Delimiter $$
create trigger ins_reader
Before Insert ON
Reader for each row
Begin
Insert into back_reader (Rid ,Rname, Rage,Rmobile,section )
values (new.Rid  ,new.Rname    , new.Rage ,new.Rmobile   ,new.section  );
end 
Delimiter $$

-- TRIGGER for the delete the database from reader table 

Delimiter $$
create trigger delete_reader
Before DELETE ON
Reader for each row
Begin
Insert into back_reader (Rid ,Rname, Rage,Rmobile,section )
values (old.Rid  ,old.Rname    , old.Rage ,old.Rmobile   ,old.section  );
end 
Delimiter $$

DELETE  from reader WHERE Rid = 2;

select *from back_reader;

-- REFERENCES 
-- https://www.geeksforgeeks.org/sql-join-set-1-inner-left-right-and-full-joins/
-- Author 
-- Name OM Bade