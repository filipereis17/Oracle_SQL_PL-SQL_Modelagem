--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 4 - Variável Bind
--

-- Utilizando Variável Bind

SET SERVEROUTPUT ON
VARIABLE gmedia NUMBER
DECLARE
    vnumero1 NUMBER(11,2) := 2000;
    vnumero2 NUMBER(11,2) := 5000;
BEGIN
    :gmedia := (vnumero1 + vnumero2) / 2;
    DBMS_OUTPUT.PUT_LINE('M�dia = ' || TO_CHAR(:gmedia));
EXCEPTION
    WHEN OTHERS
    THEN
        DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;


