--
-- Se��o 17 - Gerenciando Depend�ncias de Objetos
--
-- Aula 2 - Utilizando as Vis�es DEPTREE e IDEPTREE
--

-- Executando o script UTLDTREE

@C:\OracleDatabase21cXE\dbhomeXE\rdbms\admin\utldtree.sql  

-- Obs.: Substitua o caminho de pastas pelo sua instala��o

-- Executando a procedure DEPTREE_FILL

exec DEPTREE_FILL('TABLE','HR','EMPLOYEES')

-- Utilizando as Vis�es DEPTREE

DESC deptree

SELECT   *
FROM     deptree
ORDER by seq#


-- Utilizando as Vis�es IDEPTREE

desc ideptree

SELECT *
FROM ideptree;
