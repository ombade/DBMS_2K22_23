clear
echo "Enter Did || Dname || Dqualification || Dconsultatntfee"
read i
read n
read q
read c
echo "use HMS" > insert.sql
echo "insert into DOCTOR values ($i,'$n','$q',$c);" >> insert.sql
echo "Record Stored"
echo "select *from DOCTOR;" >> insert.sql
sudo mysql -uroot < insert.sql
echo "Done"
