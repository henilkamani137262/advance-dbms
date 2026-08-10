set serveroutput on

declare

Cursor s1 (p_dept emp.deptno%TYPE) IS 
  select * from emp where deptno = p_dept;

Cursor s2 IS 
  select distinct deptno from emp;

tot number;

begin

for d2 in s2 loop

tot := 0;

for d1 in s1(d2.deptno) loop

tot := tot + d1.salary;

dbms_output.put_line('eno:'||d1.eno||'ename:'||d1.ename||' Salary:'||d1.salary);

end loop;

dbms_output.put_line('Dept:'||d2.deptno||' Total:'||tot);

end loop;

end;
/