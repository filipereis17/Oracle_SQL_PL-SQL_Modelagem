--
-- Seção 8 
-- Utilizando Fun��es Single Row
--
-- Aula 1
--

-- Fun��es de convers�o Mai�sculo & Min�sculo

SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'KING';

SELECT employee_id, last_name, department_id
FROM employees
WHERE UPPER(last_name) = 'KING';

-- Fun��es de Manipula��o de Caracteres

SELECT CONCAT(' Curso: ','Introdu��o ORACLE 19c'), SUBSTR('Introdu��o ORACLE 19c',1,11), -- SUBSTR: posi��o 1 a 11
       LENGTH('Introdu��o ORACLE 19c'), INSTR('Introdu��o ORACLE 19c','ORACLE')          -- Procura ORACLE e retorna pos.
FROM dual;

SELECT first_name "Nome", LPAD(first_name, 20, '*') "Nome alinhado a direita", RPAD(first_name, 20, '-') "Nome alinhado a esquerda"
FROM   employees;

SELECT job_title, REPLACE(job_title, 'President', 'Presidente') CARGO
FROM jobs
WHERE  job_title = 'President';

SELECT LTRIM('09', '0')
FROM dual;

SELECT RTRIM('09_', '_')
FROM dual;

-- Fun��es tipo NUMBER

SELECT ROUND(45.923,2), ROUND(45.923,0)
FROM dual;

SELECT TRUNC(45.923,2), TRUNC(45.923,0)
FROM dual;

SELECT MOD(1300,600) RESTO
FROM dual;

SELECT ABS(-9), SQRT(9)
FROM dual;

-- Fun��es tipo DATE 

SELECT sysdate
FROM dual;

DESC dual;

SELECT *
FROM dual;

SELECT 30000 * 1.25
FROM dual;

-- C�lculos com Datas

SELECT sysdate, sysdate + 30, sysdate + 60, sysdate - 30
FROM dual;

SELECT date '2023-05-02' "Data de Admiss�o", (date '2023-05-02' + 90 - 1) "Data do fim do est�gio", TRUNC(sysdate) - (date '2023-05-02') + 1 "Dias trabalhados"
FROM dual;

SELECT last_name, ROUND((SYSDATE - hire_date) / 7, 2) "SEMANAS DE TRABALHO'"
FROM employees
ORDER BY 2 DESC;

-- Outras Fun��es tipo DATE

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(sysdate, hire_date),2) "MESES DE TRABALHO"
FROM employees;

SELECT SYSDATE, ADD_MONTHS(SYSDATE, 3), NEXT_DAY(SYSDATE,'SEXTA FEIRA'), LAST_DAY(SYSDATE)
FROM   dual;

SELECT sysdate, ROUND(SYSDATE, 'MONTH'), ROUND(SYSDATE, 'YEAR'), 
       TRUNC(SYSDATE, 'MONTH'), TRUNC(SYSDATE, 'YEAR')
FROM   dual;
       
SELECT SYSDATE, TO_CHAR(TRUNC(SYSDATE),'DD/MM/YYYY HH24:MI:SS')
FROM  dual;