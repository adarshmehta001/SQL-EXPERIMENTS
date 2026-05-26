use employee;
/* qs 1 */
SELECT ename, hiredate
FROM employee
WHERE hiredate <'1980-06-30'
   OR hiredate >'1981-12-31';

/* qs 2 */
SELECT ename
FROM employee
WHERE ename LIKE '_A%';

/* qs 3 */
SELECT ename
FROM employee
WHERE LENGTH(ename) = 5;

/* qs 5 */
SELECT ename, job
FROM employee
WHERE job NOT IN ('SALESMAN','CLERK','ANALYST');

/* qs 6 */
SELECT ename, sal*12 AS ANNUAL_SAL
FROM employee
ORDER BY ANNUAL_SAL DESC;

/* qs 7 */
SELECT ename, sal,
       SAL*0.15 AS HRA,
       SAL*0.10 AS DA,
       SAL*0.05 AS PF,
       (SAL + SAL*0.15 + SAL*0.10 - SAL*0.05) AS TOTALSAL
FROM employee
ORDER BY TOTALSAL DESC;

/* qs 8 */
UPDATE employee
SET SAL = SAL * 1.10
WHERE COMM IS NULL OR COMM = 0;

/* qs 9 */
SELECT ename, sal*0.20 AS NEW_SAL
FROM employee
WHERE sal*0.20 > 3000;

/* qs 10 */
SELECT ename,sal
FROM employee
WHERE sal BETWEEN 100 AND 9999;
