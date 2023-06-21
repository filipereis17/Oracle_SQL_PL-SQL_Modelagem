--
-- Se��o 20 
-- Criando Sin�nimos
--
-- Aula 1 - Criando Sin�nimos
--

-- Criando Sinonimos Privados

CREATE SYNONYM departamentos
FOR departments;

CREATE SYNONYM dept
FOR departments;

-- Utilizando Sin�nimos

SELECT *
FROM departamentos;

SELECT *
FROM dept;

-- Removendo Sin�nimos

DROP SYNONYM departamentos;

DROP SYNONYM dept;

-- Criando Sin�nimos P�blicos para Tabelas em outro Schema

-- Conecte-se como SYS

CREATE PUBLIC SYNONYM departamentos
FOR hr.departments;

CREATE PUBLIC SYNONYM dept
FOR hr.departments;

-- Conecte-se como SYS

SELECT *
FROM departamentos;

SELECT *
FROM dept;

-- Conecte-se como HR

SELECT *
FROM departamentos;

SELECT *
FROM dept;

-- Removendo Sin�nimos P�blicos

-- Conecte-se como SYS

DROP PUBLIC SYNONYM departamentos;

DROP PUBLIC SYNONYM dept;