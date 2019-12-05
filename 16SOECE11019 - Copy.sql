create table log(name varchar(12),oldvalue varchar(12),newvalue varchar(12));
drop trigger T1;
create or replace trigger T1
before update on customer
for each row
declare
i number;
j number;
cust_name varchar(12);
begin
cust_name := :old.name;
i := :old.contactno;
j := :new.contactno;
dbms_output.put_line(cust_name||i||j);
insert into log(name,oldvalue,newvalue) values(cust_name,i,j);
end;
update customer set contactno='8460909900' where cust_id='A0023';

create table AUDIT_CUST(operation varchar(20), userid int, odate date);
create table CUST_MSTR(cust_no int, fname varchar(20), mname varchar (20), lname varchar (20), DOB_INC date, occup varchar (25), photograph blob,
signature varchar(20), pancopy blob, form60 varchar(25));
