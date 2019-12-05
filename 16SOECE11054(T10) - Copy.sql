

create or REPLACE PACKAGE  show_date
Is 
   function dtst(dt IN date)
     return VARCHAR;
   procedure show_age(dob IN date);
end show_date;

create or   REPLACE package body show_date
IS 
function dtst (dt in date )return varchar
Is
str varchar(50);
begin
str:= 'your age on today is ' || round(to_number(sysdate-dt)/365) || ' years';
return str;
end dtst;
PROCEDURE show_age(dob in date)
IS 
Begin
DBMS_output.put_line(dtst(dob));
end show_age;
end show_date;

set SERVEROUTPUT ON
begin
show_date.show_age('14-Mar-1998');
end;




