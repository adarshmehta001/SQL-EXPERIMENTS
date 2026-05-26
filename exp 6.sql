use employee;

/*1*/
select * from department

/*2*/
select e.empno,e.ename,
case e.deptno
when 10 then 'research'
when 20 then 'accounting'
when 30 then 'sales'
when 40 then 'operations'
end as dname
from employee e;

SELECT datediff(curdate(),'1947-08-15') as total_days;

/*3*/
select timestampdiff(month, '1947-08-15',curdate()) as total_months;

/*4*/
select date_format('1997-08-15', '%D %M %Y')
as formatted_date;

/*5*/
/*6*/
select
concat(
ename,'HAS JOINED THE COMPANY ON',
date_format(hiredate, '%D %M %Y')
)as output from employee;
/*7*/
select
date_add(curdate(),interval(7-dayofweek(curdate()))day) as next_saturday;
/*8*/
select curtime() as currentime;
/*9*/
select date_sub(curdate(),interval 3 month) as threemonthsago;
/*10*/
select ename from employee where month(hiredate)=12;
/*11*/
 select ename from employee where left(hiredate,2)=right(sal,2);