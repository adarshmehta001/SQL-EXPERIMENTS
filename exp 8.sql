use employee;

/*1*/
select e.empno, e.ename, e.job, e.sal, e.deptno,d.dname
from
employee e inner join department d
on e.deptno=  d.deptno;

/*2*/
select 
e.ename as employee_name,
mg.ename as manager_name
from
employee e join employee mg
on e.mgr = mg.empno
where mg.ename = 'jones';

/*3*/

select
e.ename as employee_name, e.job as employee_job,
d.dname as department_name,
mg.ename as manager_name,
sg.grade as gradepay
from
employee e inner join department d on e.deptno = d.deptno
join employee mg on e.mgr = mg.empno
join salgrade sg on e.sal between minpay and maxpay
order by d.dname;

/*4*/

select
e.ename as employee_name,
sg.grade as gradepay,
d.dname as department_name,
e.sal as salary
from
employee e
inner join department d on e.deptno = d.deptno
inner join salgrade sg on e.sal between minpay and maxpay
where e.job <> 'clerk'
order by e.sal desc;

/*5*/

select 
e.ename as employee_name, e.job as employee_job, 
ifnull(mg.ename,'no manager') as manager_name
from
employee e left join employee mg on e.mgr = mg.empno;

/*6*/

select
e.ename as employee_name,e.job as employee_job,
e.sal *12 as annual_salary,e.deptno as department_number,
d.dname as department_name,
sg.grade
from
employee e
inner join department d on e.deptno = d.deptno
inner join salgrade sg on e.sal between minpay and maxpay
where 
e.sal*12 = 36000
or
e.job<>'clerk';

/*7*/

select
e.ename as employee_name,e.job as employee_job,
e.sal *12 as annual_salary,e.deptno as department_number,
d.dname as department_name,
sg.grade
from
employee e
inner join department d on e.deptno = d.deptno
inner join salgrade sg on e.sal between minpay and maxpay
where 
e.sal*12 = 30000
and
e.job<>'clerk';

/*9*/

select 
e.empno as employee_number,
e.ename as employee_name,
ifnull(m.empno, '-') as manager_empno,
ifnull(m.ename, 'no manager') as manager_name
from
employee e
left join employee m on e.mgr = m.empno;

/*9*/

select 
d.deptno as dept_number, d.dname as dept_name,
sum(e.sal) as total_salary
from
employee e
inner join department d on e.deptno = d.deptno
group by d.dname, d.deptno;

-- table alter--
alter table department
add column location varchar(255);

desc department;

select * from department;

update department
set location = 'japan' where deptno = 40;

update department
set location = 'newyork' where deptno = 20;

update department
set location = 'durgapur' where deptno = 10;

update department
set location = 'westbengal' where deptno = 30;

/*10*/

SELECT
E.EMPNO AS EMPLOYEE_NUMBER,
E.ENAME AS EMPLOYEE_NAME,
D.LOCATION AS POSTING_PLACE
FROM
EMPLOYEE E
	INNER JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO;
    
    /*11*/
    
select 
e.ename as employee_name,
d.dname as dept_name
from
employee e inner join department d on e.deptno = d.deptno;
