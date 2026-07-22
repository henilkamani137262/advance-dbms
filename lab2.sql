--program to find square and cube of number
set serveroutput on

DECLARE
    num number =&num;
    sq number;
    cube number;

BEGIN
	sq:= num * num;
	cube:= num * num * num;

	dbms_output.put_line('entered number :' || num);
	dbms_output.put_line('square :' || sq);
	dbms_output.put_line('CUBE :' || cube);
END;
/