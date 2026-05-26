use employee;


select ename, job,sal  from employee where deptno = 30 order by sal desc;

SELECT ename, job, deptno
FROM employee
WHERE ename LIKE 'A___N';

SELECT ename
FROM employee
WHERE ename LIKE 'S%';

SELECT ename
FROM employee
WHERE ename LIKE '%S';

SELECT ename, job, deptno
FROM employee
WHERE deptno IN (10, 20, 40)
   OR job IN ('CLERK', 'SALESMAN', 'ANALYST');

SELECT empno, ename
FROM employee
WHERE COMM IS NOT NULL AND COMM > 0;


select empno,(sal+ifnull(comm,0))as total_salary from employee ;

SELECT empno, ename, (SAL * 12) AS ANNUAL_SAL
FROM employee;

SELECT ename
FROM employee
WHERE job = 'CLERK' AND sal > 3000;

SELECT ename
FROM employee
WHERE job IN ('CLERK', 'SALESMAN', 'ANALYST')
  AND sal > 3000;
