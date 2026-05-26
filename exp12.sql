use employee;

/*12.1*/

select 
e.ename , e.job from employee e inner join employee m on e.mgr = e.empno
where e.sal < m.sal 
and e.sal > any(
select sal from employee where job = 'manager');

/*2*/

select count(*) as total_employee
from employee e inner join employee m
on e.mgr = m.empno
where e.sal > m.sal;

/*3*/

select e.ename
from employee e join employee m 
on e.mgr = e.empno
where e.job = 'manager' and m.job <> 'president';

/*4*/

delete from department where deptno not in (select distinct deptno from employee);

/*5*/

delete from
 employee 
 where deptno not in (
 select deptno from department);
 
 /*6*/
 
 select
 ename,sal
 from  employee where sal not between
 (select min(minpay) from salgrade) and
 (select max(minpay) from salgrade);
 
 
 /*insert into employee values
 (8599,'jack','analyst','7588','1982-12-03','20000',0,10),
 (8598,'jacky','analyst','7587','1982-12-04','12000',0,80)--*/
 
 /*7*/
 
 select
 e.ename , e.sal, comm, (sal+ifnull(comm,0)) as net_pay
 from employee e
 where (sal+ifnull(comm,0)) >= any (
 select sal from employee
 );
 
 /*8*/
 select e.ename 
 from employee e inner join department d
 on e.deptno = d.deptno
 where d.dname in ('sales','research');
 
 
 /*9*/
 
 select e.ename,s.grade
 from employee e join salgrade s on e.sal
 between minpay and maxpay
 where e.ename = 'jones';
 
 /*10*/
 
 select d.dname from department d where length(d.dname) in (
 select count(*) from employee group by deptno);