use employee;

/*9.1*/

select * from employee
where
sal = (
select max(sal) from employee);

/*2*/

select empno,ename
from employee
where job = 'clerk'
and sal = (
select max(sal) from employee where job = 'clerk');

/*3*/

select ename,job
from employee
where job='salesman'
and sal> 
(select max(sal) from employee where job='clerk'); 

/*4*/

select ename from employee where job='clerk'
and sal >(select sal from employee where ename ='james')
and sal <(select sal from employee where ename='scott'); 

/*5*/

select ename from employee where job='clerk'
and sal >(select sal from employee where ename ='james')
or sal <(select sal from employee where ename='scott'); 

/*6*/

select ename from employee e where sal =
(select max(sal) from employee where deptno = e.deptno);

/*7*/

select ename from employee e where sal =
(select max(sal) from employee where job = e.job);

/*8*/

select ename 
from employee 
where deptno=(
select deptno from department where dname='accounting'
);

/*9*/

select ename from employee
where deptno= (
select deptno from department where location = 'japan');

/*10*/

select job, max(sal) as total_salary
 from employee
group by job 
having sum(sal)>(select max(sal) from employee where job='manager');