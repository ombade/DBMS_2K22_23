CREATE view big_reader as
select * from reader where Rage >=20;

select * from big_reader;