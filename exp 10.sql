use employee;

/*10.1*/

select ename from employee  where deptno = 10
and sal > any( select sal from employee where deptno<>10);

/*2*/
select ename from employee  where deptno = 10
and sal > all( select sal from employee where deptno<>10);

/*3*/

select e.*
from employee e
inner join 
department d
on e.deptno = d.deptno
join
salgrade sg
on e.sal between minpay and maxpay
where d.dname = 'sales'
and 
sg.grade = 3;

/*4*/

select empno, ename 
from employee
where 
job<>'manager';

/*5*/

select e.ename as employee_name,
mg.ename as manager_name
from employee e
inner join
employee mg
on e.mgr = mg.empno
where mg.ename = 'jones';

/*6*/

SELECT
    E.ENAME,
    D.DNAME
    FROM
    EMPLOYEE E 
    INNER JOIN 
    DEPARTMENT D 
    ON E.DEPTNO = D.DEPTNO
    WHERE 
    D.DNAME = 'SALES';
    
    /*7*/
    
    select
    e.ename, e.sal, e.comm, d.dname
    from
    employee e
    inner join 
    department d
    on e.deptno = d.deptno
    where
    e.sal between 2000 and 5000
    and d.location='japan';
    
    /*8*/
    
    select 
    e.ename,e.sal
    from
    employee e
    inner join
    employee mg
    on e.mgr = mg.empno
    and e.sal>mg.sal;
    
    /*9*/
    
    select
    e.ename, e.deptno
    from
    employee e
    inner join
    employee mg
    on e.mgr = mg.empno
    where
    e.deptno= mg.deptno;
    
    /*10*/
    
    select 
    e.ename, e.job, e.sal,sg.grade
    from employee e
    join
    salgrade sg
    on e.sal between minpay and maxpay
    where
    e.deptno in(10,30)
    and sg.grade<>4 and
    e.hiredate < '1982-12-31';