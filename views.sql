CREATE view big_reader as
select * from reader where Rage >=20;

select * from big_reader;

-- update the view 
CREATE OR REPLACE VIEW big_reader AS
SELECT Rname ,Rage
FROM reader
 where Rage >=20;
ALTER VIEW big_reader AS    
SELECT Rname    
FROM reader    
 where Rage >=20;  
--  to drop the view/
DROP VIEW big_reader;