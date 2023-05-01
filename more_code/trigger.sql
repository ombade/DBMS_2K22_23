Delimiter $$
create trigger ins_student
Before Insert ON
Student for each row
Begin
Insert into Book(rno,bid,status)
values(new.rno,new.bid,'I');
end $$

