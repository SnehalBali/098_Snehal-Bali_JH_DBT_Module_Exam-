create table DEPT 
(
DEPTNO int,
DNAME varchar(15),
LOC varchar(10)
);

insert into DEPT values 
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');

create table EMP
(
EMPNO int(4),
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float(7,2),
COMM float(7,2),
DEPTNO int(2) 
);

insert into EMP values 
(7839,'KING','MANAGER','1991-11-17',5000,null,10),
(7698,'BLAKE','CLERK','1981-05-01',2850,null,30),
(7782,'CLARK','MANAGER','1981-06-09',2450,null,10),
(7566,'JONES','CLERK','1981-04-02',2975,null,20),
(7654,'MARTIN','SALESMAN','1981-09-28',1250,1400,30),
(7499,'ALLEN','SALESMAN','1981-02-20',1600,300,30);

-- 3.	Display all the employees where SAL between 2500 and 5000 (inclusive of both).
select * from EMP where SAL between 2500 and 5000;

-- 4.	Display all the ENAMEs in descending order of ENAME.
select ENAME from EMP order by ENAME desc;

-- 5.	Display all the JOBs in lowercase.
select lower(JOB) from EMP;

-- 6.	Display the ENAMEs and the lengths of the ENAMEs.
select ENAME, length(ENAME) from EMP;

-- 7.	Display the DEPTNO and the count of employees who belong to that DEPTNO .
select DEPTNO,count(ENAME) "Count of Emp." from EMP group by DEPTNO;

-- 8.	Display the DNAMEs and the ENAMEs who belong to that DNAME.
select DNAME,ENAME from EMP join DEPT
on (DEPT.DEPTNO = EMP.DEPTNO);

-- 9.	Display the position at which the string ‘AR’ occurs in the ename.
select ENAME,position('AR' in ENAME) from EMP;

-- 10.	Display the HRA for each employee given that HRA is 20% of SAL.
select ENAME, SAL, SAL*0.2 "HRA" from EMP;


