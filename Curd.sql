-- to show all the databases in the DB
show DATABASES;
-- to use the which database 
USE BMS;
-- To show all the tables in the databases
SHOW tables;

-- syntax for creating the tables in DB with some ATTRIBUTE
Create TABLE Reader (Rid INT  key AUTO_INCREMENT ,Rname VARCHAR(30)   , Rage INT,Rmobile VARCHAR(30)  ,section VARCHAR(30)  );
create Table Books(Bid int key AUTO_INCREMENT ,bname varchar(40), Price int , Author VARCHAR(30),qnt int not NULL, Theme varchar(30));
-- create Table Tran (Tid int key AUTO_INCREMENT , FOREIGN KEY (Rid) REFERENCES Reader(Rid),FOREIGN KEY (Bid) REFERENCES Books(Bid));
create Table Tran (Tid int key AUTO_INCREMENT , Rid int, Bid int ,fine int , DOI date , DOR date );
Create TABLE back_reader (Rid INT  key ,Rname VARCHAR(30)   , Rage INT,Rmobile VARCHAR(30)  ,section VARCHAR(30)  );


-- Insert opration on the table 
-- many INSERT in one QUERY
INSERT INTO reader (Rname ,Rage ,Rmobile ) values ('om bade' ,19,'9022157947'),('sham' ,23,'7987654322'),('sham' ,23,'7987654322');
-- one INSERT in one QUERY
INSERT INTO reader (Rname ,Rage ,Rmobile ) values ('om Ambadas BAde' ,9,'90v22157947');
-- insertion WITHOUT specfyiong the values here error due to key auto_incremment
-- INSERT into reader VALUES ('prajkta',23,'7776913995');


-- UPDATE the values 
UPDATE reader set Rname ='Radhesham' ,Rage =33 where Rname = 'sham';

-- Delete QUERY
DELETE  from reader WHERE Rname = 'om';
DELETE from back_reader where Rname = 'om';


-- select 
select * FROM Books;
select * FROM reader ;

select * FROM back_reader ;
select * from reader ORDER BY Rage;
-- to display the number of the rows
select COUNT(*) FROM reader;
select min(Rage) from reader;
select Rname from reader where Rage = (select min(Rage) from reader);


INSERT into Books(bname ,price ,Author ,qnt ,theme)values('wings of fire' ,200,'Apj kalam',150,'biography'),('sham chi aai',100,'ramu',300,'biography'),('exam worror',300,'PM Modi',300,'self help ');
select * FROM back_reader;
INSERT INTO reader (Rname,Rage) VALUES ('om',9),('ramu',26);