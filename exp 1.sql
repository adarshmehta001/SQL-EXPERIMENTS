use employee;


SELECT DISTINCT JOB
FROM employee;


SELECT *
FROM employee
WHERE deptno = 30;


SELECT *
FROM department
WHERE deptno > 20;


SELECT *
FROM employee
WHERE dEPTno = 30
  AND JOB IN ('MANAGER', 'CLERK');
  
  
  SELECT ename, empno, deptno
FROM employee
WHERE JOB = 'CLERK';


SELECT *
FROM employee
WHERE JOB = 'MANAGER'
  AND deptno <> 30;
  
  
SELECT *
FROM employee
WHERE deptno = 10
  AND JOB NOT IN ('MANAGER', 'CLERK');
  
  
  SELECT ename, job, sal
FROM employee
WHERE sal BETWEEN 1200 AND 1400;


SELECT ename, deptno
FROM employee
WHERE job IN ('CLERK', 'ANALYST', 'SALESMAN');


SELECT ename, deptno
FROM employee
WHERE ename LIKE 'M%';
