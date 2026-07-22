--program to accept 2 num and sum of it
set serveroutput on
declare
    no1 number:=&n01;
    no2 number:=&no2;
    s number;
    m number; 
    m1 number;
    d number;
begin
    s:=no1+no2;
    dbms_output.put_line('sum of No1+No2='||s);

    m:=no1-no2;
    dbms_output.put_line('sum of No1-No2='||m);

    m1:=no1*no2;
    dbms_output.put_line('sum of No1*No2='||m1);

    d:=no1/no2;
    dbms_output.put_line('sum of No1/No2='||d);



end;
/