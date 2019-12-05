set SERVEROUTPUT ON
declare
n number;
i number;
flag number;
begin 
 flag:=1;
 i:=2;
 n:=&n;
 for i in 2..n/2
	loop
		if mod(n,i)=0
		then
			flag:=0;
			exit;
		end if;
	end loop;
 
	if flag=1
	then
		dbms_output.put_line('prime');
	else
		dbms_output.put_line('not prime');
	end if;
end;



set SERVEROUTPUT ON
declare 
n number(10);
begin
    n:=&n;
    DBMS_OUTPUT.PUT('Square root:');
    DBMS_OUTPUT.put_line(sqrt(n));
end;



SET SERVEROUTPUT ON
declare
TEMP number;
I number;
begin
for Q in 1..50 loop   
TEMP := 0;
I := floor(Q/2);
FOR C IN 2..I LOOP
    IF (mod(Q, C) = 0 ) THEN
        TEMP := 1;
    END IF;
END LOOP;
IF (TEMP = 0) THEN
   DBMS_OUTPUT.PUT_LINE(Q||' prime number');
END IF;
END LOOP;
END;



set SERVEROUTPUT ON
DECLARE
   temp1     NUMBER := &input_a_temp;
   t_scale   CHAR := '&input_temp_scale';
   new_temp  NUMBER;
   new_scale CHAR;
 BEGIN
   IF t_scale != 'C'
     AND
     t_scale != 'F' THEN
     dbms_output.Put_line ('The scale you input is not a valid scale');
     new_temp := 0;
     new_scale := 'C';
   ELSE
     IF t_scale = 'C' THEN
       new_temp := ( ( 9 * temp1 ) / 5 ) + 32;
       new_scale := 'F';
     ELSE
       new_temp := ( ( temp1 - 32 ) * 5 ) / 9;
       new_scale := 'C';
     END IF;
   END IF;
   dbms_output.Put_line ('The new temperature in scale '||new_scale ||' is: '||new_temp);
 END;



set SERVEROUTPUT ON 
 DECLARE
    get_ctr CHAR(1) := '&input_a_character';
BEGIN
    IF ( get_ctr >= 'A' AND get_ctr <= 'Z' ) OR ( get_ctr >= 'a' AND get_ctr <= 'z' ) THEN
      dbms_output.Put_line ('The given character is a letter');
    ELSE
      dbms_output.Put_line ('The given character is not a letter');

      IF get_ctr BETWEEN '0' AND '9' THEN
        dbms_output.Put_line ('The given character is a number');
      ELSE
        dbms_output.Put_line ('The given character is not a number');
      END IF;
    END IF;
END; 