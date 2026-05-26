use employee;
create table Employee_master as
 select * from employee;
 DELETE FROM Employee_master
WHERE DeptNo = 10;
UPDATE Employee_master
SET SAL = SAL * 1.10
WHERE deptno = 20;
ALTER TABLE employee_master
MODIFY SAL decimal(10,2);
desc employee_master;
DROP TABLE Employee_master;