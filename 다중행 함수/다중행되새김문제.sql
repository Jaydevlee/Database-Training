--1
SELECT DEPTNO, 
       TRUNC(AVG(SAL), 0) AS AVG_SAL,
       MAX(SAL) AS MAX_SAL,
       MIN(SAL) AS MIN_SAL,
       COUNT(*) AS CNT
      FROM EMP
    GROUP BY DEPTNO;
    
--2
SELECT JOB,
      COUNT(JOB)
      FROM EMP
      GROUP BY JOB
      HAVING COUNT(JOB) >= 3; -- 그룹화한 조건은 WHERE을 사용할 수 없다.
      
--3
SELECT TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
        DEPTNO,
        COUNT(*) AS CNT
        FROM EMP
      GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO;
        
-- 4
SELECT NVL2(COMM, 'O', 'X') AS EXIST_COMM,
       COUNT(NVL2(COMM, 'O', 'X')) AS CNT
       FROM EMP
      GROUP BY  NVL2(COMM, 'O', 'X'); 

        
      
       