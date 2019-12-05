select * from acct_mster;
set SERVEROUTPUT ON
declare
 vacct_no varchar2(10);
 begin
 vacct_no:=&vacct_no;
 select acct_no into vacct_no from acct_mster where acct_no=vacct_no;
 DBMS_OUTPUT.PUT_LINE('Account no is available');
 
 Exception
  when No_Data_Found
then
 DBMS_OUTPUT.PUT_LINE('Account no is not found');
end;

set SERVEROUTPUT ON
declare
  vacct_no varchar2(10);
 vcur_bal number(10,0);
 vamount number(10,0);
 invalid Exception;
begin
 vacct_no:=&vacct_no;
 vamount:=&vamount;
  select cur_bal,acct_no into vcur_bal,vacct_no from acct_mster where acct_no=vacct_no ;
  if vcur_bal<vamount then
    raise invalid;
  else 
    update acct_mster set cur_bal=(cur_bal-vamount) where acct_no=vacct_no;
  end if;
  
  exception 
  when invalid then
    DBMS_OUTPUT.PUT_LINE('amount is greater then cur_bal');
end;

set SERVEROUTPUT ON
declare
  vacct_no varchar2(10);

 vamount number(10,0);
 invalid Exception;
begin
 vacct_no:=&vacct_no;
 vamount:=&vamount;
  update acct_mster set cur_bal=(cur_bal+vamount) where acct_no=vacct_no;
end;

commit;