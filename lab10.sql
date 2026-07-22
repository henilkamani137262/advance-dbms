--program block to delete record given eid
set serveroutput on

declare
	emp number(5):=&emp;
begin
	delete from emp where eno=emp;
	commit;
	dbms_output.put_line('record deleted');
end;
/