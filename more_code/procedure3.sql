Delimiter $$
create procedure doc_degree(IN i int)
Begin
Declare T Decimal(6,2); 
Select Dconstultantfee into T from DOCTOR where Did=i;
if T < 250 Then
update DOCTOR set Dqualification="BHMS" where Did=i;
elseif T >= 250 and T<=600 then
update DOCTOR set Dqualification="MBBS" where Did=i;
elseif T>=600 then
update DOCTOR set Dqualification="MD" where Did=i;
end if;
end $$
Delimiter ;
