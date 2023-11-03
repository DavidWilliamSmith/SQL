

CREATE TABLE dept_tab
(
  deptno	      INTEGER,
  dname		      TEXT,
  mgr_id	      INTEGER,
  location_id	      INTEGER,
  CONSTRAINT pk_dept_tab PRIMARY KEY (deptno)
);

CREATE TABLE emp_tab
(  
  empno             INTEGER,  
  name              TEXT NOT NULL,  
  job               TEXT,  
  manager           INTEGER,  
  hiredate          DATE,  
  salary            INTEGER,  
  commission        INTEGER,  
  deptno            INTEGER,  
  CONSTRAINT pk_emp_tab PRIMARY KEY (empno),  
  CONSTRAINT fk_emp_tab_deptno FOREIGN KEY (deptno) 
  REFERENCES dept_tab(deptno)  
);

CREATE TABLE old_emp_tab
(  
  empno             INTEGER,  
  name              TEXT not null,  
  job               TEXT,  
  manager           INTEGER,  
  hiredate          DATE,  
  salary            INTEGER,  
  commission        INTEGER,  
  deptno            INTEGER
);

CREATE TABLE dept_copy_tab
(
  deptno	      INTEGER,
  dname		      TEXT,
  mgr_id	      INTEGER,
  location_id	      INTEGER
);

INSERT INTO dept_tab VALUES 
   ( 30
   , 'Purchasing'
   , 114
   , 1700
   );
   
   INSERT INTO dept_tab VALUES 
   ( 40
   , 'Human Resources'
   , 203
   , 2400
   );
   
   
   
   INSERT INTO dept_tab VALUES 
   ( 70 
   , 'Public Relations'
   , 204
   , 2700
   );
   
   INSERT INTO dept_tab VALUES 
   ( 80 
   , 'Sales'
   , 145
   , 2500
   );
   
   INSERT INTO dept_tab VALUES 
   ( 90 
   , 'Executive'
   , 100
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 100 
   , 'Finance'
   , 108
   , 1700
   );
   
   INSERT INTO dept_tab VALUES 
   ( 110 
   , 'Accounting'
   , 205
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 120 
   , 'Treasury'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 130 
   , 'Corporate Tax'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 140 
   , 'Control And Credit'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 150 
   , 'Shareholder Services'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 160 
   , 'Benefits'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 170 
   , 'Manufacturing'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 180 
   , 'Construction'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 190 
   , 'Contracting'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 200 
   , 'Operations'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 210 
   , 'IT Support'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 220 
   , 'NOC'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 230 
   , 'IT Helpdesk'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 240 
   , 'Government Sales'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 250 
   , 'Retail Sales'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 260 
   , 'Recruiting'
   , NULL
   , 1700
   );
   
INSERT INTO dept_tab VALUES 
   ( 270 
   , 'Payroll'
   , NULL
   , 1700
   );  
   
   

INSERT INTO emp_tab 
VALUES(7001, 'KING', 'PRESIDENT', null,  
 STR_TO_DATE('17-11-1981', '%d-%m-%Y'),  
 5000, null, 40);

INSERT INTO emp_tab 
VALUES(7002, 'CLARK', 'MANAGER', 7001,  
 STR_TO_DATE('9-6-1981','%d-%m-%Y'),  
 2450, null, 40
);

INSERT INTO emp_tab 
VALUES(7003, 'JONES', 'MANAGER', 7001,  
 STR_TO_DATE('2-4-1981','%d-%m-%Y'),  
 2975, null, 30
);

INSERT INTO emp_tab
 VALUES(7004, 'SCOTT', 'ANALYST', 7002,  
 STR_TO_DATE('2-4-1981','%d-%m-%Y'),  
 3000, null, 70
);

INSERT INTO emp_tab 
VALUES(7005, 'FORD', 'ANALYST', 7002,  
 STR_TO_DATE('3-12-1981','%d-%m-%Y'),  
 3000, null, 30
);

INSERT INTO emp_tab
 VALUES(7006, 'SMITH', 'CLERK', 7003,  
 STR_TO_DATE('17-12-1980','%d-%m-%Y'),  
 800, null, 30
);

INSERT INTO emp_tab 
VALUES(7007, 'ADAMS', 'CLERK', 7003,  
 STR_TO_DATE('23-1-1982', '%d-%m-%Y'),  
 1100, null, 40  
);

INSERT INTO emp_tab  
VALUES(  
 7008, 'MILLER', 'CLERK', 7003,  
 STR_TO_DATE('23-1-1982','%d-%m-%Y'),  
 1300, null, 30  
);


INSERT INTO old_emp_tab 
VALUES(7001, 'KING', 'PRESIDENT', null,  
 STR_TO_DATE('17-11-1981','%d-%m-%Y'),  
 5000, null, 80 );

INSERT INTO old_emp_tab 
VALUES(7002, 'CLARK', 'MANAGER', 7001,  
 STR_TO_DATE('9-6-1981','%d-%m-%Y'),  
 2450, null, 40
);

INSERT INTO old_emp_tab 
VALUES(7003, 'JONES', 'MANAGER', 7001,  
 STR_TO_DATE('2-4-1981','%d-%m-%Y'),  
 2975, null, 30
);

INSERT INTO old_emp_tab 
 VALUES(7004, 'SCOTT', 'ANALYST', 7002,  
 STR_TO_DATE('2-4-1981','%d-%m-%Y'),  
 3000, null, 70
);

INSERT INTO old_emp_tab 
VALUES(7005, 'FORD', 'ANALYST', 7002,  
 STR_TO_DATE('3-12-1981','%d-%m-%Y'),  
 3000, null, 30
);

INSERT INTO old_emp_tab 
 VALUES(7006, 'SMITH', 'CLERK', 7003,  
 STR_TO_DATE('17-12-1980','%d-%m-%Y'),  
 800, null, 30
);

INSERT INTO old_emp_tab 
VALUES(7007, 'ADAMS', 'CLERK', 7003,  
 STR_TO_DATE('23-1-1982', '%d-%m-%Y'),  
 1100, null, 40  
);

INSERT INTO old_emp_tab 
VALUES(  
 7008, 'MILLER', 'CLERK', 7003,  
 STR_TO_DATE('23-1-1982','%d-%m-%Y'),  
 1300, null, 30  
);

-- Insert rows into table dept_tab
INSERT INTO dept_tab VALUES (0010,'Administration', 200, 1700);

-- Insert row by changing default order of columns
INSERT INTO DEPT_TAB (deptno,location_id,mgr_id,dname) values (20,1800,210,'Marketing');

-- Insert NULL values
INSERT INTO DEPT_TAB values (50,'Strategy', NULL, NULL);

-- Insert special values like SYSDATE
INSERT INTO EMP_TAB VALUES (100,'Scott', 'PROGRAMMER', 210, NOW(), 10000, 3000, 10);

-- Modify one row in emp_tab
UPDATE emp_tab SET salary=8000 WHERE empno=7001;

UPDATE emp_tab 
SET manager = (SELECT manager FROM (SELECT * FROM emp_tab) AS et WHERE empno=7001), 
    salary = (SELECT salary FROM (SELECT * FROM emp_tab) AS et WHERE empno=7001) 
WHERE empno=7002;


-- Modify row in a different table using subquery
UPDATE old_emp_tab SET deptno = (SELECT deptno FROM emp_tab WHERE empno=7001) WHERE empno=7001;

-- Insert a new department in dept_tab
INSERT INTO dept_tab (deptno, dname, mgr_id, location_id)
VALUES (500, 'New Department', 0, 0);

-- Update emp_tab with the new department
UPDATE emp_tab SET deptno=500 WHERE deptno=10;

-- Delete one row from a table
SELECT * FROM emp_tab;

DELETE FROM emp_tab WHERE empno=7007;

-- Delete rows based on another table
SELECT * FROM old_emp_tab;

DELETE FROM old_emp_tab WHERE salary=(SELECT salary FROM emp_tab WHERE salary<1000);

-- Integrity constraint error
DELETE FROM dept_tab WHERE deptno=10;

-- Merge statement to update or insert rows into dept_copy_tab
INSERT INTO dept_copy_tab (deptno, dname, mgr_id, location_id)
SELECT d.deptno, d.dname, 300, d.location_id
FROM dept_tab d
ON DUPLICATE KEY UPDATE mgr_id = 300;

-- Create a table with primary key and Not null constraints 
CREATE TABLE countries (country_id INTEGER, country_name TEXT, country_code TEXT NOT NULL, country_region TEXT, total_customers INTEGER, profit_country_level INTEGER, PRIMARY KEY(country_id));

-- Create a table with foreign key constraint
CREATE TABLE states (state_id INTEGER,state_name TEXT, state_region TEXT, country_id INTEGER, total_customers INTEGER, profit_state_level INTEGER, PRIMARY KEY(state_id), FOREIGN KEY(country_id) REFERENCES countries(country_id));

-- Create a table using a subquery
CREATE TABLE employees_dept40 AS (SELECT empno,name,job,salary FROM emp_tab where deptno=40);

-- Add a new column in a table
ALTER TABLE states ADD (test_col INTEGER); 

-- Change datatype or size of a column
ALTER TABLE states MODIFY test_col TEXT;

-- Delete a column from a table
ALTER TABLE states DROP COLUMN test_col;

-- Drop a table
DROP TABLE dept_copy_tab;

-- Rename a table
ALTER TABLE states RENAME TO states_sales_tab;