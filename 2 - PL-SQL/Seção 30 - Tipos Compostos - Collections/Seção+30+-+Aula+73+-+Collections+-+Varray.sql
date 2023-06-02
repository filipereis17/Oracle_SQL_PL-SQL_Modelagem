--
-- Aula 5 - Collections - Varray
--

-- Collections - Varray

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE Numero_Table_Type IS VARRAY (10) OF INTEGER(2);
  Numero_table numero_table_type := numero_table_type();
BEGIN
  -- Armazena n�meros de 1 a 10 em um Varray
  FOR i IN 1..10
  LOOP
    Numero_Table.extend;
    Numero_Table(i) := i;
  END LOOP;
  -- O programa vai fazer muitas coisas...
  -- L� o Varray e imprime os n�meros armazenados
  FOR i IN 1..10
  LOOP
    DBMS_OUTPUT.PUT_LINE('Varray: Indice = ' || TO_CHAR(i) || ', Valor = ' || TO_CHAR(Numero_Table(i)));
  END LOOP;
END;