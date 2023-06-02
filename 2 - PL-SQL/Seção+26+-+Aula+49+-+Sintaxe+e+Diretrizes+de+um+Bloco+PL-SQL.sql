--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 1 - Sintaxe e Diretrizes de um Bloco PL/SQL
--

-- Comentando o Código

SET SERVEROUTPUT ON
DECLARE
    vNumero1 NUMBER(13,2); -- Declara��o de vari�vel para o Primeiro n�mero
    vNumero2 NUMBER(13,2); -- Declara��o de vari�vel para o Segundo n�mbero
    vMedia NUMBER(13,2); -- Declara��o de vari�vel para receber a M�dia calculada
BEGIN
    /* C�lculo do valor da m�dia entre dois n�meros
    Autor: Em�lio Scudero, Digitado por: Filipe Reis
    Data: 05/05/20/20 , 01/06/2023 */
    
    vNumero1 := 8000;
    vNumero2 := 4000;
    vMedia := (vNumero1 + vNumero2) / 2; -- C�lculo da M�dia entre os dois n�meros
    DBMS_OUTPUT.PUT_LINE('vnumero1 = ' || vNumero1); -- Impress�o do Primeiro n�mero
    DBMS_OUTPUT.PUT_LINE('vnumero2 = ' || vNumero2); -- Impress�o do Segundo n�mero
    DBMS_OUTPUT.PUT_LINE('vmedia = ' || vMedia); -- Impress�o da M�dia calculada
END;


