
-- TRIGGER for the update the database 
Delimiter $$
create trigger ins_reader
Before Insert ON
Reader for each row
Begin
Insert into back_reader (Rid ,Rname, Rage,Rmobile,section )
values (new.Rid  ,new.Rname    , new.Rage ,new.Rmobile   ,new.section  );
end 
Delimiter $$

-- TRIGGER for the delete the database 

Delimiter $$
create trigger delete_reader
Before DELETE ON
Reader for each row
Begin
Insert into back_reader (Rid ,Rname, Rage,Rmobile,section )
values (old.Rid  ,old.Rname    , old.Rage ,old.Rmobile   ,old.section  );
end 
Delimiter $$

