--definition 7 with nested if
set serveroutput on
declare
xrlno NUMBER(3):=&xrlno;
xsub1 NUMBER(3);
xsub2 NUMBER(3);
xsub3 NUMBER(3);
xsub4 NUMBER(3);
xsub5 NUMBER(3);
tot NUMBER(4);
p NUMBER(3);
begin
SELECT sub1,sub2,sub3,sub4,sub5 INTO
xsub1,xsub2,xsub3,xsub4,xsub5 FROM mid_1 WHERE
RLNO=xrlno;
tot:=xsub1 + xsub3 + xsub3 + xsub4 + xsub5;
p:=tot/5;
if xsub1 > 40 and xsub2 > 40 and xsub3 > 40 and xsub4 >
40 and xsub5 > 40
then
if p >= 40 and p < 50 then
update mid_1 set
total=tot,per=p,result='Pass',Grade='D' where
RLNO=xrlno;
elsif p >= 50 and p < 60 then

update mid_1 set
total=tot,per=p,result='Pass',Grade='C' where
RLNO=xrlno;
elsif p >= 60 and p < 70 then
update mid_1 set
total=tot,per=p,result='Pass',Grade='B' where
RLNO=xrlno;
elsif p >= 70 and p <= 100 then
update mid_1 set
total=tot,per=p,result='Pass',Grade='A' where
RLNO=xrlno;
else
update mid_1 set
total=tot,per=p,result='Fail',Grade='F' where
RLNO=xrlno;
end if;
else
update mid_1 set
total=tot,per=p,result='Fail',Grade='F' where
RLNO=xrlno;

end if;
end;
/