use employee;
/* 1 */
SELECT COUNT(*) AS Total_Employees
FROM employee;

/* 2 */
SELECT SUM(SAL) AS Total_Salary
FROM employee;

/* 3 */
SELECT MAX(SAL) AS Max_Salary
FROM Employee;

/* 4 */
SELECT MIN(SAL) AS Min_Salary
FROM Employee;

/* 5 */
SELECT AVG(SAL) AS Avg_Salary
FROM employee;

/* 6 */
SELECT MAX(SAL) AS Max_Clerk_Salary
FROM employee
WHERE job = 'CLERK';

/* 7 */
SELECT MAX(SAL) AS Max_Dept20_Salary
FROM Employee
WHERE DEPTNO = 20;

/* 8 */
SELECT MIN(SAL) AS Min_Salesman_Salary
FROM Employee
WHERE JOB = 'SALESMAN';

/* 9 */
SELECT AVG(SAL) AS Avg_Manager_Salary
FROM employee
WHERE job = 'MANAGER';

/* 10 */
SELECT SUM(SAL) AS Total_Salary
FROM employee
WHERE job = 'ANALYST'
  AND deptno = 40;
  
/* 11 */
SELECT UPPER(ENAME) AS Name_Upper
FROM Employee;

/* 12 */
SELECT LOWER(ENAME) AS Name_Lower
FROM Employee;

/* 13 */
SELECT concat(
upper(left(ename,1)),
lower(substring(ename,2)))
 as Name_Proper
FROM Employee;

/* 14 */
SELECT LENGTH('jerry') AS Name_Length;

/* 15 */
SELECT ENAME, LENGTH(ENAME) AS Name_Length
FROM Employee;