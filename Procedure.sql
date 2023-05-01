Delimiter $$
create procedure doc_(IN i int)
Begin
Declare T Decimal(6,2); 
Select Dconstultantfee into T from DOCTOR where Did=i;
set T=T+T*0.1;
update DOCTOR set Dconstultantfee= T where Did=i;
end $$
Delimiter ;
