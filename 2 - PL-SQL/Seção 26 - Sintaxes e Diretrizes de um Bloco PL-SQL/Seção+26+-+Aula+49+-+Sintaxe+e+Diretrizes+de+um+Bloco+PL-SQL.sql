--
-- SeÃ§Ã£o 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 1 - Sintaxe e Diretrizes de um Bloco PL/SQL
--

-- Comentando o CÃ³digo

SET SERVEROUTPUT ON
DECLARE
    vNumero1 NUMBER(13,2); -- Declaração de variável para o Primeiro número
    vNumero2 NUMBER(13,2); -- Declaração de variável para o Segundo númbero
    vMedia NUMBER(13,2); -- Declaração de variável para receber a Média calculada
BEGIN
    /* Cálculo do valor da média entre dois números
    Autor: Emílio Scudero, Digitado por: Filipe Reis
    Data: 05/05/20/20 , 01/06/2023 */
    
    vNumero1 := 8000;
    vNumero2 := 4000;
    vMedia := (vNumero1 + vNumero2) / 2; -- Cálculo da Média entre os dois números
    DBMS_OUTPUT.PUT_LINE('vnumero1 = ' || vNumero1); -- Impressão do Primeiro número
    DBMS_OUTPUT.PUT_LINE('vnumero2 = ' || vNumero2); -- Impressão do Segundo número
    DBMS_OUTPUT.PUT_LINE('vmedia = ' || vMedia); -- Impressão da Média calculada
END;


