Delimiter $$
create procedure doc_fee(IN i int,OUT n varchar(15),OUT s int)
Begin 
Select Dname,Dconstultantfee into n,s from DOCTOR where Did=i;
end $$
Delimiter ;
