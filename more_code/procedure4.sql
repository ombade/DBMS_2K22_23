Delimiter $$
create procedure fine_amt(IN s int,IN b int,IN d date)
Begin
Declare Di date;
Declare N int;
Declare A int; 
Select doi into Di from Student where rno=s;
Set N=DATEDIFF(d,Di)
if  (N<=10) Then
set A=0;
update Book Set
status='R',Amt=A;
elseif (T >=11 and T<=30) then
set A=N*5;
update Book Set
status='R',Amt=A;
end if;
end $$
Delimiter ;
