CREATE TABLE CUSTOMER_MASTER1(
CLI_No varchar(30),
Fname varchar(30),
Mname varchar(30),
Lname varchar(30),
DOB date,
City  varchar(30),
Pincode number(6),
state varchar(30),
bal_due number(30),
salary number(30)
)

INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C01','Annushikha','Satyendra','Kumar','14-March-1998','Bhavnagar',362620,'Gujrat',380091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C02','Neha','anilbhai','Hirani','01-feb-1999','jnd',360007,'Gujrat',380041,3000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C03','Nancy','Rameshbhai','Verma','01-March-1999','Mumbai',362620,'MH',340091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C04','Annu','Rambhai','Sharma','01-Jan-1999','Mumbai',352720,'MH',300091,2000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C05','krishna','KarshanBhai','goti','30-Jan-1999','salaem',360020,'TamilNadu',345091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C06','Manisha','Manubhai','Patel','01-Jan-1998','ahmbd',362620,'Gujrat',300091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C07','Meera','Rambhai','gandhi','01-Jan-1999','jnd',362620,'Gujrat',380091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C08','Niva','Jagdishbhai','Gondliya','23-Jan-1999','Rajkot',362620,'Gujrat',380091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary)
VALUES('C09','Deepak','Kamlesh','Kumar','01-jun-1999','Mumbai',362620,'MH',380091,4000);
INSERT INTO CUSTOMER_MASTER1(CLI_No,Fname,Mname,Lname,DOB,City,Pincode,state,bal_due,salary) 
VALUES('C10','Chandni','Babubhai','Parmar','01-Jan-1999','jnd',362620,'Gujrat',380091,4000);
commit;

select * from CUSTOMER_MASTER1;
commit;